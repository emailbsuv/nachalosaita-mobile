import 'package:flutter/material.dart';

class dialogueHistory1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return dialogueHistory1State();
  }
}

class dialogueHistory1State extends State<dialogueHistory1>{



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
          leading: BackButton(
              color: Colors.black
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Text('text'),
        )



    );
  }

}
