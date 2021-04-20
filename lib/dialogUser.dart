import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nachalosaita/UserInfoDrawer.dart';
import 'package:nachalosaita/app_icon_icons.dart';

class dialogUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return dialogUserState();
  }
}

class dialogUserState extends State<dialogUser>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: UserInfoDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData (
          color: Colors.white,
        ),
        shape: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.3))),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text('Дарья Иванова', style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[




          Container(
            padding: EdgeInsets.only(right: 10),
            child: Builder(
              builder: (context) => IconButton(
                icon: CircleAvatar(
                  backgroundColor: Colors.indigoAccent,
                  child: Icon(AppIcon.online, color: Colors.white,),
                  //backgroundImage: NetworkImage(data[index]['img']),
                ),
                iconSize: 45,
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          )


        ],
      ),

      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(top: 10, right: 15, left: 15),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[

                Container(
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0.5), // changes position of shadow
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 10),
                  padding: EdgeInsets.only(top: 3.5, bottom: 3.5,),
                  child: Text('13 июня', style: TextStyle(color: Colors.grey, fontSize: 12), textAlign: TextAlign.center,),
                ),

                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[

                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/t.jpg'),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[


                              Container(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Text('Татьяна', style: TextStyle(color: Colors.grey, fontSize: 12),),
                              ),

                              Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.19),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text('Здравствуйте! Чем я могу вам помочь? авыавы авыавыавыа ав ыврпарапрап р', style: TextStyle(fontSize: 14)),

                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text('18:50', style: TextStyle(color: Colors.grey, fontSize: 12), textAlign: TextAlign.right,),
                                      )

                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[

                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.indigoAccent,
                          child: Icon(AppIcon.online, color: Colors.white,),
                          //backgroundImage: NetworkImage(data[index]['img']),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      color: Color(0xff34ba65),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text('Здравствуйте!', style: TextStyle(fontSize: 14, color: Colors.white)),

//                                      Align(
//                                        alignment: Alignment.centerRight,
//                                        child: Text('18:50', style: TextStyle(color: Colors.white),),
//                                      )

                                 // Text('18:50', style: TextStyle(color: Colors.white), textAlign: TextAlign.end,),

                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text('18:50', style: TextStyle(color: Colors.white, fontSize: 12), textAlign: TextAlign.right,),
                                      )

                                    ],
                                  )
                              ),

                              Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Color(0xff34ba65),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text('Нужно создать портфолио', style: TextStyle(fontSize: 14, color: Colors.white)),

                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text('18:51', style: TextStyle(color: Colors.white, fontSize: 12), textAlign: TextAlign.right,),
                                      )

                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),

                Container(
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0.5), // changes position of shadow
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 15, top: 20),
                  padding: EdgeInsets.only(top: 3.5, bottom: 3.5,),
                  child: Text('3 июля', style: TextStyle(color: Colors.grey, fontSize: 12), textAlign: TextAlign.center,),
                ),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Container(
                        child: Text('Вы приняли диалог', style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text('Посетитель закрыл сайт. Сообщения будут отправлены на e-mail', style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,),
                      )

                    ],
                  ),
                )

              ],
            )),
      ),

      bottomNavigationBar: Container(
        width: double.infinity,
        height: 130.0,
        decoration: new BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.grey[400].withOpacity(0.5)),
          ),
          //  color: Color(0xfff0f0f0),
          //  borderRadius: BorderRadius.circular(50)
        ),
        child: Column(
          children: <Widget>[

            Container(
              padding: EdgeInsets.only(top: 10),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(top: 20,left: 20),
                      child: TextField(
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                        textCapitalization: TextCapitalization.sentences,
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Ваше сообщение ...',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Material(
                      color: Colors.transparent,
                      child: InkWell(
                        child: Container(
                            margin: EdgeInsets.only(right: 4),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.send,
                                color: Color(0xff34ba65),
                                size: 30,
                              ),
                            )),
                        // onTap: () => {onSendMessage(textEditingController.text, 0)},
                      )),

                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Row(
                children: <Widget>[
                  Icon(Icons.looks_one, color: Colors.grey.withOpacity(0.3),),
                  Icon(Icons.looks_two, color: Colors.grey.withOpacity(0.3),),
                  Icon(Icons.looks_3, color: Colors.grey.withOpacity(0.3),),
                  Icon(Icons.looks_4, color: Colors.grey.withOpacity(0.3),),
                ],
              ),
            )


          ],
        ),
      ),

    );
  }

}
