import 'package:flutter/material.dart';

class LIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.add,
            color: Colors.green,
            size: 48,
          ),
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 48,
            semanticLabel: "Favourite",
          ),
          Icon(
            Icons.beach_access,
            color: Colors.blue,
            size: 48,
          ),
        ],
      ),
    );
  }
}