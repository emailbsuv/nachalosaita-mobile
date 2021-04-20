import 'package:flutter/material.dart';

class NotificationsPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationsPageViewState();
  }
}

class NotificationsPageViewState extends State<NotificationsPageView>{



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
          title: Text('Системное уведолмение', style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[


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
                                    child: Text('10 июня, 22:43', style: TextStyle(color: Colors.grey, fontSize: 14),),
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
                        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века. Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" для текстов на латинице с начала XVI века.'),
                      )

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
