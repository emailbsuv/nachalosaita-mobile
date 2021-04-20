import 'package:flutter/material.dart';

class ForgottenPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgottenPasswordState();
  }
}

class ForgottenPasswordState extends State<ForgottenPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new ClipPath(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 70.0),
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
                    margin: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Забыли пароль?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Введите логин или E-mail',
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
                                borderRadius: new BorderRadius.circular(5.0)),
                            splashColor: Color(0xff34ba65),
                            color: Color(0xff34ba65),
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.only(top: 13),
                              child: Text(
                                'Поменять пароль',
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
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                            splashColor: Colors.grey,
                            color: Colors.grey,
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.only(top: 13),
                              child: Text(
                                'Назад',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
