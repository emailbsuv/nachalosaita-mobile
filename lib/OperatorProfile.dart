import 'package:flutter/material.dart';

class OperatorProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OperatorProfileState();
  }
}

class OperatorProfileState extends State<OperatorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/t.jpg',
                        ),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.photo_camera,
                            size: 40,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Татьяна',
                          hintStyle: TextStyle(color: Colors.black),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.5)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue.withOpacity(0.5)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(height: 1, color: Colors.grey.withOpacity(1)),
            Container(
              padding: EdgeInsets.all(15),
              child: Text('test3'),
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
                    child: Text(
                        'Логин может состоять из маленьких латинских букв и знака подчеркивания.'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('Адрес электронной почты:'),
                  )
                ],
              ),
            ),
            Divider(height: 1, color: Colors.grey.withOpacity(1)),
            Container(
              padding: EdgeInsets.all(15),
              child: Text('m@itgroup.kz'),
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
                    child: Text(
                        'Для получения извещений и восстановления пароля.'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('Должность:'),
                  )
                ],
              ),
            ),
            Divider(height: 1, color: Colors.grey.withOpacity(1)),
            Container(
              padding: EdgeInsets.all(15),
              child: Text('Консультант'),
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
                    child: Text(
                        'Не обязательное поле. Должность оператора будет отображена под именем оператора.'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('Изменение пароля:'),
                  )
                ],
              ),
            ),
            Divider(height: 1, color: Colors.grey.withOpacity(1)),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Введите ваш пароль',
                style: TextStyle(color: Colors.grey),
              ),
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
                    child: Text(
                        'Введите новый пароль или оставьте поле пустым, чтобы сохранить старый.'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('Подтверждение пароля:'),
                  )
                ],
              ),
            ),
            Divider(height: 1, color: Colors.grey.withOpacity(1)),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Повторите пароль',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Divider(height: 1, color: Colors.grey.withOpacity(1)),
            Container(
              margin: const EdgeInsets.only(top: 20.0, bottom: 20),
              width: MediaQuery.of(context).size.width / 3,
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
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
