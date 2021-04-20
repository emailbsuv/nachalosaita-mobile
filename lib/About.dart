import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutState();
  }
}

class AboutState extends State<About> {
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
            'О программе',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/logo.png',
                          width: 290,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: Text('Версия: 1.1.0'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      'Онлайн-консультант «Начало сайта»\n\nДля тех, кто хочет не только общаться с клиентами в режиме реального времени, но и получать дополнительные заказы, помимо телефонных и письменных обращений.\nПозволяет оперативно консультировать посетителей сайта, пока они не ушли к конкурентам, а также разгрузить телефонную линию и повысить качество обслуживания.',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.only(top: 80.0),
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                                'Сообщить об ошибке',
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
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                            splashColor: Color(0xff34ba65),
                            color: Color(0xff34ba65),
                            child: Container(
                              // height: 50,
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Позвонить службе поддержки',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Режим работы с 9:00 до 18:00',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                                'Оценить приложение',
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
                ],
              )),
        ));
  }
}
