  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  class LScaffoldWidget extends StatefulWidget{
    @override
    _LScaffoldWidgetState createState()=> _LScaffoldWidgetState();
  }

  class _LScaffoldWidgetState extends State<LScaffoldWidget>{
    int _count=0;
    
    @override
    Widget build(BuildContext context){
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Scaffold'),
          ),
          body: Center(
            child: Text('You have pressed the button $_count times'),
          ),
          bottomNavigationBar: BottomAppBar(
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.home),onPressed: ()=> Navigator.pop(context)),
                IconButton(icon: Icon(Icons.add),onPressed: ()=> setState(() {
                  _count++;
                }),
               )
              ],
            ),
          ),
        ),
      );
    }
  }