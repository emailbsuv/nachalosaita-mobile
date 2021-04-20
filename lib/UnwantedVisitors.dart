import 'package:flutter/material.dart';
import 'package:nachalosaita/UnwantedVisitorsEdit.dart';

import 'app_icon_icons.dart';

class UnwantedVisitors extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UnwantedVisitorsState();
  }
}

class UnwantedVisitorsState extends State<UnwantedVisitors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        shape: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.3))),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          'Нежелательные посетители',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(right: 15, left: 15, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                  'С помощью механизма запрета Вы можете бороться с нежелательными посетителями, которые нарушают работу консультантов, открывая большое количество окон или присылая спам сообщения.'),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                'Всего: 4 посетителя',
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                margin: EdgeInsets.only(right: 15),
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepOrangeAccent,
                                  child: Icon(
                                    AppIcon.bow_tie,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                'Тимур Муратов',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              child: Text('10 июля'
                                                  ''),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 15),
                                              child: RaisedButton(
                                                elevation: 0.0,
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xfffc4847),
                                                child: Text(
                                                  'Удалить',
                                                  style: TextStyle(
                                                      color: Colors.white),
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
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xff34ba65),
                                                child: Text(
                                                  'Редактировать',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              UnwantedVisitorsEdit()));
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
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                margin: EdgeInsets.only(right: 15),
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepOrangeAccent,
                                  child: Icon(
                                    AppIcon.bow_tie,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                'Тимур Муратов',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              child: Text('10 июля'
                                                  ''),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 15),
                                              child: RaisedButton(
                                                elevation: 0.0,
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xfffc4847),
                                                child: Text(
                                                  'Удалить',
                                                  style: TextStyle(
                                                      color: Colors.white),
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
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xff34ba65),
                                                child: Text(
                                                  'Редактировать',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              UnwantedVisitorsEdit()));
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
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                margin: EdgeInsets.only(right: 15),
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepOrangeAccent,
                                  child: Icon(
                                    AppIcon.bow_tie,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                'Тимур Муратов',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              child: Text('10 июля'
                                                  ''),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 15),
                                              child: RaisedButton(
                                                elevation: 0.0,
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xfffc4847),
                                                child: Text(
                                                  'Удалить',
                                                  style: TextStyle(
                                                      color: Colors.white),
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
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xff34ba65),
                                                child: Text(
                                                  'Редактировать',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              UnwantedVisitorsEdit()));
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
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                margin: EdgeInsets.only(right: 15),
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepOrangeAccent,
                                  child: Icon(
                                    AppIcon.bow_tie,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                'Тимур Муратов',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              child: Text('10 июля'
                                                  ''),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 15),
                                              child: RaisedButton(
                                                elevation: 0.0,
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xfffc4847),
                                                child: Text(
                                                  'Удалить',
                                                  style: TextStyle(
                                                      color: Colors.white),
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
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xff34ba65),
                                                child: Text(
                                                  'Редактировать',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              UnwantedVisitorsEdit()));
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
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                margin: EdgeInsets.only(right: 15),
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepOrangeAccent,
                                  child: Icon(
                                    AppIcon.bow_tie,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                'Тимур Муратов',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              child: Text('10 июля'
                                                  ''),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 15),
                                              child: RaisedButton(
                                                elevation: 0.0,
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xfffc4847),
                                                child: Text(
                                                  'Удалить',
                                                  style: TextStyle(
                                                      color: Colors.white),
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
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xff34ba65),
                                                child: Text(
                                                  'Редактировать',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              UnwantedVisitorsEdit()));
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
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                margin: EdgeInsets.only(right: 15),
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepOrangeAccent,
                                  child: Icon(
                                    AppIcon.bow_tie,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                'Тимур Муратов',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              child: Text('10 июля'
                                                  ''),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 15),
                                              child: RaisedButton(
                                                elevation: 0.0,
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xfffc4847),
                                                child: Text(
                                                  'Удалить',
                                                  style: TextStyle(
                                                      color: Colors.white),
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
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(5.0)),
                                                color: Color(0xff34ba65),
                                                child: Text(
                                                  'Редактировать',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              UnwantedVisitorsEdit()));
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
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
