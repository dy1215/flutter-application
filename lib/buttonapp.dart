import 'package:flutter/material.dart';

class LBWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LButtonWidget(),
    );
  }
}

class LButtonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body:  new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            child: Text('Flat Button Demo'),
            onPressed: (){},
          ),
          RaisedButton(
            child: Text("Raised Button Demo"),
            onPressed:(){},
          ),
          IconButton(
            icon: Icon(
              Icons.sms_failed,
              color:Colors.blue,
              size:36,
            ),
            tooltip: 'Image Button Demo',
            onPressed: (){},
          ),
          Material(
            color: Colors.orange,
            child: InkWell(
              onTap: (){},
              child: Container(width: 80.0,height: 80.0),
            ),
          ),
          RawMaterialButton(
            child: Icon(
              Icons.play_arrow,
              color: Colors.limeAccent,
            ),
            onPressed: (){},
            shape: CircleBorder(),
            elevation: 2,
            splashColor: Colors.transparent,
            fillColor: Colors.deepPurple,
            highlightColor: Colors.transparent,
          )
        ],
      ),
    );
  }
  
FlatButton({required Text child, required Null Function() onPressed}) {}
}

RaisedButton({required Text child, required Null Function() onPressed}) {
}