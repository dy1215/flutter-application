import 'dart:math';
import 'package:flutter/material.dart';

class LListWheelScrollView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListWheelScrollView(
      children: listItems(context),
      itemExtent: 100,
      useMagnifier: true,
      magnification: 1.25,
      );
  }
}

List<Widget> listItems(BuildContext context){
  int i=0;
  List<Widget> items =  new List.empty();
  do{
    i += 1;
    items.add(Container(
      color: Color((Random().nextDouble() * 0xFFFFF).toInt() << 0)
      .withOpacity(1.0),
    ));
  }while(i<=100);
  return items;
}