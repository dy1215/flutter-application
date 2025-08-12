import 'dart:math';
import 'package:flutter/material.dart';

class LSliverGrid extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 50,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context,int index){
              return new Container(
                color: Color((Random().nextDouble() * 0xFFFFF).toInt() << 0)
                .withOpacity(1.0),
                height: 100.0);
            }))
      ],
    );
  }
}