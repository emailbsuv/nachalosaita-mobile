import 'package:flutter/material.dart';
import 'package:nachalosaita/app_icon_icons.dart';

class UserInfoDrawer extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserInfoDrawerState();
  }
}

class UserInfoDrawerState extends State<UserInfoDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Wrap(
            children: <Widget>[
              Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: DrawerHeader(
                  child: Column(
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //  crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 70,
                              height: 70,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Container(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text('Дарья Иванова', style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),

                                    Container(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text('Изменить', style: TextStyle(color: Colors.blue),),
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

            ],
          ),


          ListTile(
            title: Text('E-mail:'),
            subtitle: Text('d@site.kz'),
            onTap: () {
            },
          ),

          ListTile(
            title: Text('Телефон:'),
            subtitle: Text('+7 (777) 000-00-00'),
            onTap: () {
            },
          ),

          ListTile(
            title: Text('IP адрес клиента:'),
            subtitle: Text('34.43.45.67.555'),
            onTap: () {
            },
          ),

          ListTile(
            title: Text('Чат на странице:'),
            subtitle: Text('https://itgroup.kz'),
            onTap: () {
            },
          ),

        Divider(height: 1,),

          Container(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[


                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: InkWell(
                      child: Text('Выйти из диалога', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),),
                    )
                  ),

                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: InkWell(
                      child: Text('Передать диалог', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),),
                    )
                ),

                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: InkWell(
                      child: Text('Пригласить оператора', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),),
                    )
                ),

                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: InkWell(
                      child: Text('Спам', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),),
                    )
                ),


              ],
            ),
          ),


        ],
      ),
    );
  }


}
