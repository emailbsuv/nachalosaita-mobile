import 'package:flutter/material.dart';
import './queries.dart';
import 'package:http/http.dart';
import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:cron/cron.dart';
import 'dart:convert';

class Dialog {
  String _daemonInterval = '*/2 * * * *';
  String _keepOnlineInterval = '*/1 * * * *';
  Response _query;
  LocalStorageInterface _system;

  void sendMessage() {}

  void getMessages() {}

  Future<Dialog> init() async {
    this._system = await LocalStorage.getInstance();
    User _user = await new User().init();
    this._query = await post("$domain/operator/update",
        body: {
          'is_first': 1.toString(),
        },
        headers: _user.getCookie());
    if (this._query.statusCode == 200) {
      print('Messages has been received');
      print(this._query.body);
    } else {
      print('Initialization error');
    }
    return this;
  }

  void runMessageDaemon() {}

  void runKeepOnlineDaemon() {
    Cron daemon = new Cron();
    daemon.schedule(new Schedule.parse(this._keepOnlineInterval), () async {
      User _user = await new User().init();
      Response localQuery =
          await post("$domain/keep-online", headers: _user.getCookie());
      print('user online status has been updated');
    });
  }

  void stopKeepOnlineDaemon() {
    Cron daemon = new Cron();
    daemon.close();
  }
}
