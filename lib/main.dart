import 'package:flutter/material.dart';
import 'package:nachalosaita/ForgottenPassword.dart';
import 'PagesView.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import './src/queries.dart';
import './src/dialogs.dart' as Dialog;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.windows;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nachalosaita',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFFffffff)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    // userIsAuthorized();
    super.initState();
  }

  void userIsAuthorized() async {
    var _user = await new User().init();
    if (await _user.userIsAuthorized()) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => PagesView()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new ClipPath(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 60),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/logo.png',
                          width: 290,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400].withOpacity(0.5),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: TextField(
                            controller: login,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Введите ваш логин',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400].withOpacity(0.5),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        margin: const EdgeInsets.symmetric(
                          vertical: 0.0,
                          horizontal: 20.0,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: TextField(
                            controller: password,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Введите пароль',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20.0),
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                              child: FlatButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0)),
                                splashColor: Color(0xff34ba65),
                                color: Color(0xff34ba65),
                                child: Container(
                                  height: 50,
                                  padding: EdgeInsets.only(top: 13),
                                  child: Text(
                                    'Войти',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                onPressed: () async {
                                  var _user = await new User().init({
                                    'login': login.text,
                                    'password': password.text
                                  });

                                  await _user.login();

                                  if (_user.isLogged()) {
                                    Dialog.Dialog().init();
                                    Dialog.Dialog().runMessageDaemon();
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PagesView()));
                                  } else {
                                    print('Ошибка авторизации');
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                              child: FlatButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0)),
                                splashColor: Color(0xff34ba65),
                                color: Color(0xff34ba65),
                                child: Container(
                                  height: 50,
                                  padding: EdgeInsets.only(top: 13),
                                  child: Text(
                                    'Подключиться',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15.0),
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                              child: FlatButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                color: Colors.transparent,
                                child: Container(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Забыли пароль?",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgottenPassword()));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
