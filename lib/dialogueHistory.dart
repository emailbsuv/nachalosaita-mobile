import 'package:flutter/material.dart';
import 'package:nachalosaita/app_icon_icons.dart';

class dialogueHistory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return dialogueHistoryState();
  }
}

class dialogueHistoryState extends State<dialogueHistory>{



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
          title: Text('История диалогов', style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(5.0),
                 // margin: EdgeInsets.only(bottom: 20),
                  color: Colors.grey[200],
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.search),
                      title: TextField( textCapitalization: TextCapitalization.sentences,
                        //  controller: controller,
                        // onChanged: onSearch,
                        decoration: InputDecoration(
                            hintText: 'Введите текст', border: InputBorder.none),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.cancel),
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                  // padding: EdgeInsets.only(top: 10),
                  child: Text('На данной странице можно осуществить поиск диалогов по имени пользователя, имени оператора или фразе, встречающейся в сообщении.'),
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 15),
                  child: Text('Всего: 18 диалогов', textAlign: TextAlign.left,),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.3))),
                  ),
                ),

                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.deepOrangeAccent,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.blue,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.deepPurpleAccent,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.brown,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.amber,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.deepOrangeAccent,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.deepOrangeAccent,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.deepOrangeAccent,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.deepOrangeAccent,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),


                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.deepOrangeAccent,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Divider(height: 1, color: Colors.grey.withOpacity(0.3),),
                      ),

                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, right: 15, left: 15,),
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
                                        backgroundColor: Colors.deepOrangeAccent,
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

                                                    child: Text('Тимур Муратов', style: TextStyle(fontWeight: FontWeight.bold),),
                                                  ),
                                                  Container(
                                                    child: Text('10 июля'
                                                        ''),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              child: Text('IP адрес: ' + '12.3343.456.78'),
                                            ),

                                            Container(
                                              child: Text('Оператор: ' + 'Марина'),
                                            ),

                                            Container(
                                              child: Text('Количество сообщений: ' + '48'),
                                            )


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
                        onTap: (){
                        },
                      ),


                    ],
                  )
                )

              ],
            ),
          ),
        )

    );
  }

}
