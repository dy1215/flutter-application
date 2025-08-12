import 'package:flutter/material.dart';
import 'package:projectflutterapp2/buttonapp.dart';

class LSizedBox extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          onPressed: (){},
          child: Text("Simple Raised Button"),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: (){},
          child: Text("Simple Raised Button"),
        ),
        SizedBox(
          height: 100,
          child: RaisedButton(
            onPressed: (){},
            child: Text("Button With Specific height"),
          ),
        ),
        SizedBox(
            height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: RaisedButton(
            onPressed: (){},
            child: Text("Button with Infinity width")),
        )
      ],
    );
  }
}