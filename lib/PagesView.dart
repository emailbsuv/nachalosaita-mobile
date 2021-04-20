import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nachalosaita/IncomingMessage.dart';
import 'package:nachalosaita/MyDialogs.dart';
import 'package:nachalosaita/NavDraver.dart';
import 'package:nachalosaita/OperatorProfile.dart';
import 'package:nachalosaita/app_icon_icons.dart';
import 'package:nachalosaita/test3.dart';

class PagesView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PagesViewState();
  }
}

class PagesViewState extends State<PagesView>{
  int _index = 0;
  bool _notification = true;

  @override
  Widget build(BuildContext context) {

    Widget child;
    String title;

    switch (_index) {
      case 0:
        child = IncomingMessage();
        title = "Входящие";
        break;
      case 1:
        child = MyDialogs();
        title = "Мои диалоги";
        break;
      case 2:
        child = OperatorProfile();
        title = "Мой профиль";
        break;
    }

    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData (
            color: Colors.white,

          ),
          shape: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.3))),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,

//          leading: new Icon(Icons.menu,color: Colors.black,),

          leading: Container(

            child: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  padding: EdgeInsets.only(left: 15),
                  icon: CircleAvatar(
                    backgroundImage: AssetImage('assets/t.jpg'),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
          ),

          title: Text(title, style: TextStyle(color: Colors.black),),
          actions: <Widget>[
//            Switch(
//              activeColor: Color(0xff34ba65),
//              value: _notification,
//              onChanged: (val) {
//                print('Hello');
//              },
//            ),

            Container(
              padding: EdgeInsets.only(right: 10),
              child: CupertinoSwitch(
                value: _notification,
                onChanged: (bool value) { setState(() { _notification = value; }); },
              ),
            )


          ],
        ),

      body: SizedBox.expand(child: child),
      bottomNavigationBar: SizedBox(
        height: 85,
        child: Container(
         // padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.3))),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            fixedColor: Colors.blue,
            onTap: (newIndex) => setState(() => _index = newIndex),
            currentIndex: _index,
            items: [
              BottomNavigationBarItem(icon: Icon(AppIcon.download, size: 25,), title: Text("Входящие")),
              BottomNavigationBarItem(icon: Icon(AppIcon.sms), title: Text("Мои диалоги")),
              BottomNavigationBarItem(icon: Icon(AppIcon.security_on), title: Text("Мой профиль")),
            ],
          ),
        )
      )
    );
  }
}