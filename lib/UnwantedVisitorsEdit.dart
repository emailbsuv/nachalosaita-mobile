import 'package:flutter/material.dart';

class UnwantedVisitorsEdit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UnwantedVisitorsEditState();
  }
}

class UnwantedVisitorsEditState extends State<UnwantedVisitorsEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          shape:
              Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.3))),
          backgroundColor: Colors.white,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Text(
            'Тимур Муратов',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text('Например: 127.0.0.1 или example.com'),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Text('IP адрес посетителя:'),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text('12.42.545.55'),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                            'Количество дней, на которое будет запрещен IP адрес'),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Text('Количество дней:'),
                      )
                    ],
                  ),
                ),
                Divider(height: 1, color: Colors.grey.withOpacity(1)),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text('1'),
                ),
                Divider(height: 1, color: Colors.grey.withOpacity(1)),
                Container(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text('Причина запрета.'),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Text('Комментарий:'),
                      )
                    ],
                  ),
                ),
                Divider(height: 1, color: Colors.grey.withOpacity(1)),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text('Не желательный пользователь'),
                ),
                Divider(height: 1, color: Colors.grey.withOpacity(1)),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  margin: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0)),
                          splashColor: Color(0xff34ba65),
                          color: Color(0xff34ba65),
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.only(top: 13),
                            child: Text(
                              'Сохранить изменения',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          onPressed: () {},
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
