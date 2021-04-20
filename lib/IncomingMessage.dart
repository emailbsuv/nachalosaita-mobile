import 'package:flutter/material.dart';
import 'package:nachalosaita/dialogUser.dart';
import 'package:nachalosaita/app_icon_icons.dart';

class IncomingMessage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IncomingMessageState();
  }
}

class IncomingMessageState extends State<IncomingMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(right: 15, left: 15, top: 5),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 5),
              padding: EdgeInsets.only(right: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(right: 15),
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundColor: Colors.indigoAccent,
                            child: Icon(
                              AppIcon.online,
                              size: 40,
                              color: Colors.white,
                            ),
                            //backgroundImage: NetworkImage(data[index]['img']),
                          ),
                        ),
                        Container(
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          'Дарья Иванова',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        child: Text('10 июля'
                                            ''),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  'Здравствуйте! Хочу заказать веб сайт на готовом решении. Можете расчитать сколько по цене будет стоить',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 15),
                                        child: RaisedButton(
                                          elevation: 0.0,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      5.0)),
                                          color: Color(0xfffc4847),
                                          child: Text(
                                            'Позже',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            print('Hello');
                                          },
                                        ),
                                      ),
                                      Container(
                                        width: 180,
                                        child: RaisedButton(
                                          elevation: 0.0,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      5.0)),
                                          color: Color(0xff34ba65),
                                          child: Text(
                                            'Принять',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        dialogUser()));
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(right: 15),
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundColor: Colors.indigoAccent,
                            child: Icon(
                              AppIcon.online,
                              size: 40,
                              color: Colors.white,
                            ),
                            //backgroundImage: NetworkImage(data[index]['img']),
                          ),
                        ),
                        Container(
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          'Дарья Иванова',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        child: Text('10 июля'
                                            ''),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  'Здравствуйте! Хочу заказать веб сайт на готовом решении. Можете расчитать сколько по цене будет стоить',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 15),
                                        child: RaisedButton(
                                          elevation: 0.0,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      5.0)),
                                          color: Color(0xfffc4847),
                                          child: Text(
                                            'Позже',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            print('Hello');
                                          },
                                        ),
                                      ),
                                      Container(
                                        width: 180,
                                        child: RaisedButton(
                                          elevation: 0.0,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      5.0)),
                                          color: Color(0xff34ba65),
                                          child: Text(
                                            'Принять',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        dialogUser()));
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(right: 15),
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundColor: Colors.indigoAccent,
                            child: Icon(
                              AppIcon.online,
                              size: 40,
                              color: Colors.white,
                            ),
                            //backgroundImage: NetworkImage(data[index]['img']),
                          ),
                        ),
                        Container(
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          'Дарья Иванова',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        child: Text('10 июля'
                                            ''),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  'Здравствуйте! Хочу заказать веб сайт на готовом решении. Можете расчитать сколько по цене будет стоить',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 15),
                                        child: RaisedButton(
                                          elevation: 0.0,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      5.0)),
                                          color: Color(0xfffc4847),
                                          child: Text(
                                            'Позже',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            print('Hello');
                                          },
                                        ),
                                      ),
                                      Container(
                                        width: 180,
                                        child: RaisedButton(
                                          elevation: 0.0,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      5.0)),
                                          color: Color(0xff34ba65),
                                          child: Text(
                                            'Принять',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        dialogUser()));
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(right: 15),
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundColor: Colors.indigoAccent,
                            child: Icon(
                              AppIcon.online,
                              size: 40,
                              color: Colors.white,
                            ),
                            //backgroundImage: NetworkImage(data[index]['img']),
                          ),
                        ),
                        Container(
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          'Дарья Иванова',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        child: Text('10 июля'
                                            ''),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  'Здравствуйте! Хочу заказать веб сайт на готовом решении. Можете расчитать сколько по цене будет стоить',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 15),
                                        child: RaisedButton(
                                          elevation: 0.0,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      5.0)),
                                          color: Color(0xfffc4847),
                                          child: Text(
                                            'Позже',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            print('Hello');
                                          },
                                        ),
                                      ),
                                      Container(
                                        width: 180,
                                        child: RaisedButton(
                                          elevation: 0.0,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      5.0)),
                                          color: Color(0xff34ba65),
                                          child: Text(
                                            'Принять',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        dialogUser()));
                                          },
                                        ),
                                      )
                                    ],
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
          ],
        ),
      ),
    ));
  }
}
