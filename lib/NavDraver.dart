import 'package:flutter/material.dart';
import 'package:nachalosaita/About.dart';
import 'package:nachalosaita/ContactWithUs.dart';
import 'package:nachalosaita/Notifications.dart';
import 'package:nachalosaita/Settings.dart';
import 'package:nachalosaita/UnwantedVisitors.dart';
import 'package:nachalosaita/app_icon_icons.dart';
import 'package:nachalosaita/dialogueHistory.dart';
import './src/queries.dart';
import 'main.dart';

class NavDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavDrawerState();
  }
}

class NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Wrap(
            children: <Widget>[
              Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: DrawerHeader(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //  crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 70,
                              height: 70,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/t.jpg'),
                              ),
                            ),
                            Container(
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        'Татьяна',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        'm@itgroup.kz',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          ListTile(
            leading: Icon(
              AppIcon.history,
              size: 27,
              color: Color(0xff34ba65),
            ),
            title: Text('История диалогов'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dialogueHistory()));
            },
          ),

          ListTile(
            leading: Icon(
              AppIcon.helmet,
              size: 27,
              color: Color(0xff34ba65),
            ),
            title: Text('Нежелательные посетители'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UnwantedVisitors()));
            },
          ),

//          ListTile(
//            leading: Icon(AppIcon.global, size: 27, color: Color(0xff34ba65),),
//            title: Text('Язык'),
//            onTap: () {
//            },
//          ),

          ListTile(
            leading: Icon(
              Icons.notifications_active,
              size: 27,
              color: Color(0xff34ba65),
            ),
            title: Text('Уведомления'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
          ),

          ListTile(
            leading: Icon(
              AppIcon.information,
              size: 27,
              color: Color(0xff34ba65),
            ),
            title: Text('О программе'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),

          ListTile(
            leading: Icon(
              Icons.settings,
              size: 27,
              color: Color(0xff34ba65),
            ),
            title: Text('Настройки'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
          ),

          ListTile(
            leading: Icon(
              Icons.message,
              size: 27,
              color: Color(0xff34ba65),
            ),
            title: Text('Связь с нами'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactWithUs()));
            },
          ),

          ListTile(
            leading: Icon(
              AppIcon.entrance,
              size: 27,
              color: Color(0xfffc4847),
            ),
            title: Text('Выход'),
            onTap: () async {
              var _user = await new User().init();
              await _user.logout();
              if (!_user.isLogged()) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              }
            },
          ),

          Divider(
            height: 1,
            color: Colors.grey.withOpacity(0.3),
          ),

          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Версия: 1.1.0',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
