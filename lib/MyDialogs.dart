import 'package:flutter/material.dart';
import 'package:nachalosaita/dialogUser.dart';

import 'app_icon_icons.dart';

class MyDialogs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyDialogsState();
  }
}

class MyDialogsState extends State<MyDialogs>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(right: 15, left: 15, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text('Всего: 3 диалога', textAlign: TextAlign.left,),
                ),

                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only( right: 10),
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
                                  backgroundColor: Colors.indigoAccent,
                                  child: Icon(AppIcon.online, size: 40, color: Colors.white,),
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
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(

                                              child: Text('Дарья Иванова', style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              child: Text('11:28'
                                                  ''),
                                            )
                                          ],
                                        ),
                                      ),


                                      Text('Здравствуйте! Хочу заказать веб сайт на готовом решении. Можете расчитать сколько по цене будет стоить', maxLines: 2, overflow: TextOverflow.ellipsis,),

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        Divider(height: 1, color: Colors.grey.withOpacity(0.3),)
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => dialogUser()));
                  },
                ),

                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only( right: 10),
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
                                  backgroundColor: Colors.teal,
                                  child: Icon(AppIcon.bow_tie, size: 40, color: Colors.white,),
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
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(

                                              child: Text('Мейрамбек Муратбаев', style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              child: Text('Вчера'
                                                  ''),
                                            )
                                          ],
                                        ),
                                      ),


                                      Text('Здравствуйте! Хочу заказать веб сайт на готовом решении. Можете расчитать сколько по цене будет стоить', maxLines: 2, overflow: TextOverflow.ellipsis,),

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        Divider(height: 1, color: Colors.grey.withOpacity(0.3),)
                      ],
                    ),
                  ),
                  onTap: (){
                  },
                ),

                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only( right: 10),
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
                                  backgroundColor: Colors.blueGrey,
                                  child: Icon(AppIcon.mortarboard, size: 40, color: Colors.white,),
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
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(

                                              child: Text('Посетитель #22', style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              child: Text('10 июня'
                                                  ''),
                                            )
                                          ],
                                        ),
                                      ),


                                      Text('Здравствуйте! Хочу заказать веб сайт на готовом решении. Можете расчитать сколько по цене будет стоить', maxLines: 2, overflow: TextOverflow.ellipsis,),

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        Divider(height: 1, color: Colors.grey.withOpacity(0.3),)
                      ],
                    ),
                  ),
                  onTap: (){
                  },
                )

              ],
            ),
          ),
        )
    );
  }

}
