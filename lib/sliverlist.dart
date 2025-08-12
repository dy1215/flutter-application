import 'dart:math';
import 'package:flutter/material.dart';

class LSliverList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context,int index){
              return Container(
                color: Color((Random().nextDouble() * 0xFFFFF).toInt() << 0)
                .withOpacity(1.0),
                height: 100.0);
            },
          ),
         ),
      ],
    );
  }
}