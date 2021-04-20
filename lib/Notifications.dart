import 'package:flutter/material.dart';
import 'package:nachalosaita/NotificationsPageView.dart';

class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationsState();
  }
}

class NotificationsState extends State<Notifications>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData (
            color: Colors.white,
          ),
          shape: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.3))),
          backgroundColor: Colors.white,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Text('Уведомления', style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[200],
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[

                /*
                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(right: 15, left: 15),
                                    child: Text('Системное уведомление', style: TextStyle(fontSize: 16),),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 10),
                                    child: Text('2 июня 2020 г., 21:29', style: TextStyle(color: Colors.grey, fontSize: 13),),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: 50,
                              height: 60,
                              margin: EdgeInsets.only(right: 5),
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Icon(Icons.notifications_active, size: 45, color: Colors.amber,),
                                //backgroundImage: NetworkImage(data[index]['img']),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Divider(height: 1, color: Colors.grey.withOpacity(0.3),),

                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.'),
                      )

                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(right: 15, left: 15),
                                    child: Text('Системное уведомление', style: TextStyle(fontSize: 16),),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 10),
                                    child: Text('2 июня 2020 г., 21:29', style: TextStyle(color: Colors.grey, fontSize: 13),),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: 50,
                              height: 60,
                              margin: EdgeInsets.only(right: 5),
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Icon(Icons.notifications_active, size: 45, color: Colors.amber,),
                                //backgroundImage: NetworkImage(data[index]['img']),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Divider(height: 1, color: Colors.grey.withOpacity(0.3),),

                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.'),
                      )

                    ],
                  ),
                ),

                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50),
                                bottom: Radius.circular(50)
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 60,
                                margin: EdgeInsets.only(right: 5),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Icon(Icons.notifications_active, size: 45, color: Colors.amber,),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                            ],
                          )
                        // Image.asset("assets/cloud64.png"),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('Системное уведомление',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle( fontSize: 16),
                                  textAlign: TextAlign.left,),
                              ),

                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                                child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.', maxLines: 2, overflow: TextOverflow.ellipsis,),
                              ),


                              Container(
                                  padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 20),
                                  child: Row(
                                      children: <Widget>[

                                        Text('10 июня',
                                          style: TextStyle(color: Colors.black38),
                                          textAlign: TextAlign.right,),

                                        Expanded(
                                          child: Text(" " + '22:43',
                                            style: TextStyle(color: Colors.black38),
                                            textAlign: TextAlign.right,),
                                        )
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                */

                InkWell(
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(50),
                                  bottom: Radius.circular(50)
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 60,
                                  margin: EdgeInsets.only(right: 5),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: Icon(Icons.notifications_active, size: 45, color: Colors.amber,),
                                    //backgroundImage: NetworkImage(data[index]['img']),
                                  ),
                                ),
                              ],
                            )
                          // Image.asset("assets/cloud64.png"),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                  alignment: Alignment.centerLeft,
                                  child: Text('Системное уведомление',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle( fontSize: 16),
                                    textAlign: TextAlign.left,),
                                ),
                                /* Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(a.messageru,
                                      style: TextStyle(),
                                      textAlign: TextAlign.left,),

                                  ),*/
                                Container(
                                    padding: EdgeInsets.only(top: 5, left: 10, right: 10,),
                                    child: Row(
                                        children: <Widget>[

                                          Text('10 июня',
                                            style: TextStyle(color: Colors.black38),
                                            textAlign: TextAlign.right,),

                                          Expanded(
                                            child: Text(" " + '22:43',
                                              style: TextStyle(color: Colors.black38),
                                              textAlign: TextAlign.right,),
                                          )
                                        ]
                                    )
                                ),

                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 20),
                                  child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.', maxLines: 2, overflow: TextOverflow.ellipsis,),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsPageView()));
                  },
                ),

                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50),
                                bottom: Radius.circular(50)
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 60,
                                margin: EdgeInsets.only(right: 5),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Icon(Icons.notifications_active, size: 45, color: Colors.amber,),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                            ],
                          )
                        // Image.asset("assets/cloud64.png"),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('Системное уведомление',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle( fontSize: 16),
                                  textAlign: TextAlign.left,),
                              ),
                              /* Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(a.messageru,
                                      style: TextStyle(),
                                      textAlign: TextAlign.left,),

                                  ),*/
                              Container(
                                  padding: EdgeInsets.only(top: 5, left: 10, right: 10,),
                                  child: Row(
                                      children: <Widget>[

                                        Text('10 июня',
                                          style: TextStyle(color: Colors.black38),
                                          textAlign: TextAlign.right,),

                                        Expanded(
                                          child: Text(" " + '22:43',
                                            style: TextStyle(color: Colors.black38),
                                            textAlign: TextAlign.right,),
                                        )
                                      ]
                                  )
                              ),

                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 20),
                                child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.', maxLines: 2, overflow: TextOverflow.ellipsis,),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50),
                                bottom: Radius.circular(50)
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 60,
                                margin: EdgeInsets.only(right: 5),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Icon(Icons.notifications_active, size: 45, color: Colors.amber,),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                            ],
                          )
                        // Image.asset("assets/cloud64.png"),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('Системное уведомление',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle( fontSize: 16),
                                  textAlign: TextAlign.left,),
                              ),
                              /* Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(a.messageru,
                                      style: TextStyle(),
                                      textAlign: TextAlign.left,),

                                  ),*/
                              Container(
                                  padding: EdgeInsets.only(top: 5, left: 10, right: 10,),
                                  child: Row(
                                      children: <Widget>[

                                        Text('10 июня',
                                          style: TextStyle(color: Colors.black38),
                                          textAlign: TextAlign.right,),

                                        Expanded(
                                          child: Text(" " + '22:43',
                                            style: TextStyle(color: Colors.black38),
                                            textAlign: TextAlign.right,),
                                        )
                                      ]
                                  )
                              ),

                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 20),
                                child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.', maxLines: 2, overflow: TextOverflow.ellipsis,),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50),
                                bottom: Radius.circular(50)
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 60,
                                margin: EdgeInsets.only(right: 5),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Icon(Icons.notifications_active, size: 45, color: Colors.amber,),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                            ],
                          )
                        // Image.asset("assets/cloud64.png"),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('Системное уведомление',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle( fontSize: 16),
                                  textAlign: TextAlign.left,),
                              ),
                              /* Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(a.messageru,
                                      style: TextStyle(),
                                      textAlign: TextAlign.left,),

                                  ),*/
                              Container(
                                  padding: EdgeInsets.only(top: 5, left: 10, right: 10,),
                                  child: Row(
                                      children: <Widget>[

                                        Text('10 июня',
                                          style: TextStyle(color: Colors.black38),
                                          textAlign: TextAlign.right,),

                                        Expanded(
                                          child: Text(" " + '22:43',
                                            style: TextStyle(color: Colors.black38),
                                            textAlign: TextAlign.right,),
                                        )
                                      ]
                                  )
                              ),

                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 20),
                                child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.', maxLines: 2, overflow: TextOverflow.ellipsis,),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50),
                                bottom: Radius.circular(50)
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 60,
                                margin: EdgeInsets.only(right: 5),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Icon(Icons.notifications_active, size: 45, color: Colors.amber,),
                                  //backgroundImage: NetworkImage(data[index]['img']),
                                ),
                              ),
                            ],
                          )
                        // Image.asset("assets/cloud64.png"),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('Системное уведомление',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle( fontSize: 16),
                                  textAlign: TextAlign.left,),
                              ),
                              /* Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(a.messageru,
                                      style: TextStyle(),
                                      textAlign: TextAlign.left,),

                                  ),*/
                              Container(
                                  padding: EdgeInsets.only(top: 5, left: 10, right: 10,),
                                  child: Row(
                                      children: <Widget>[

                                        Text('10 июня',
                                          style: TextStyle(color: Colors.black38),
                                          textAlign: TextAlign.right,),

                                        Expanded(
                                          child: Text(" " + '22:43',
                                            style: TextStyle(color: Colors.black38),
                                            textAlign: TextAlign.right,),
                                        )
                                      ]
                                  )
                              ),

                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 20),
                                child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.', maxLines: 2, overflow: TextOverflow.ellipsis,),
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
        )



    );
  }

}
