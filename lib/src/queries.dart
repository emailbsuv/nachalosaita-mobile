import 'package:http/http.dart';
import 'dart:convert';
import 'package:cross_local_storage/cross_local_storage.dart';
import './dialogs.dart';
// constants

String domain = 'https://chat.testim.kz/api-chat';

class User {
  bool _logged = false;
  String _login = '';
  String _password = '';
  String _csrfToken = '';
  Map<String, dynamic> _data = new Map<String, dynamic>();
  Map<String, String> _cookie = new Map<String, String>();
  Response _query;
  LocalStorageInterface _system;

  Future<User> init([Map loginData]) async {
    this._system = await LocalStorage.getInstance();
    if (loginData != null) {
      this._login = loginData['login'];
      this._password = loginData['password'];
      await this.getCsrfToken();
    }

    return this;
  }

  Future<bool> userIsAuthorized() async {
    if (this._system.getString('lastAuthorizedData') != null) {
      await this.authorize(true);
      return true;
    } else {
      return false;
    }
  }

  Future<void> getCsrfToken() async {
    this._query = await get("$domain/get-csrf-token");
    if (this._query.statusCode == 200) {
      this._csrfToken = jsonDecode(this._query.body)['csrf_token'];
      setCookie();
    } else {
      print(this._query.body);
    }
  }

  void setCookie() {
    this
        ._cookie
        .addAll({'cookie': this._query.headers['set-cookie'].split(';')[0]});
  }

  Future<User> login() async {
    if (this._csrfToken.isEmpty) {
      await this.getCsrfToken();
    }

    if (!this.loginValidate()) {
      throw new Exception('Недостаточно данных для авторизации');
    } else {
      this._query = await post("$domain/login",
          body: {
            'login': this._login,
            'password': this._password,
            'isRemember': 'on',
            'csrf_token': this._csrfToken,
          },
          headers: this._cookie);

      if (this._query.statusCode == 200) {
        await this.authorize();
        Dialog().runKeepOnlineDaemon();
        print('User authorized, daemon started');
      } else {
        print(this._query.body);
        print('There was an error');
      }

      return this;
    }
  }

  Future<void> authorize([bool needSignIn]) async {
    if (needSignIn != null && needSignIn) {
      if (this._system.getString('lastAuthorizedData') == null) {
        return null;
      }
      var lastAuthData =
          jsonDecode(this._system.getString('lastAuthorizedData'));
      this._login = lastAuthData['login'];
      this._password = lastAuthData['password'];
      this.login();
      return null;
    }

    this._logged = true;
    this._data = {
      'currentUserData': jsonDecode(this._query.body),
      'logged': this._logged,
    };
    this._system.setString('currentUser', jsonEncode(this._data));

    this._system.setString(
        'lastAuthorizeData',
        jsonEncode({
          'login': this._login,
          'password': this._password,
        }));
    saveCookie();
  }

  void saveCookie() {
    this._system.setString('cookie', jsonEncode(this._cookie));
  }

  Map<String, String> getCookie() {
    var cookie = jsonDecode(this._system.getString('cookie'));
    return new Map<String, String>.from(cookie);
  }

  Map<String, dynamic> getCurrentUser() {
    var _user = jsonDecode(this._system.getString('currentUser'));
    return jsonDecode(_user);
  }

  bool loginValidate() {
    return this._login.isNotEmpty &&
        this._password.isNotEmpty &&
        this._csrfToken.isNotEmpty;
  }

  bool isLogged() {
    return this._logged;
  }

  Future logout() async {
    this._query = await post("$domain/logout", headers: this.getCookie());
    if (this._query.statusCode == 200) {
      Dialog _dialog = await Dialog().init();
      this._system.clear();
      _dialog.stopKeepOnlineDaemon();
    } else {
      print('Ошибка при выходе из аккаунта');
      print(this._query.body);
    }
  }
}
