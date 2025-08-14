import 'package:flutter/material.dart';

class LDismissible extends StatefulWidget{
  @override
  _LDismissibleState createState()=> _LDismissibleState();
}

class _LDismissibleState extends State<LDismissible>{
  List<int> colorCodes = <int>[50,100,200,300,400,500,600,700,800,900];

  @override
  Widget build(BuildContext context){
    return Container(
      child: ConstrainedBox(
        constraints: new BoxConstraints(
          minHeight: 35.0,
          maxHeight: 160.0
        ),
        child: Row(
          children: <Widget>[
            Expanded(child: _listBuilder()),
          ],
        )
      ),
    );
  }

  Widget _listBuilder (){
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: colorCodes.length,
      itemBuilder: (BuildContext context,int index){
        final item = colorCodes[index];
        return Dismissible(
          key: Key(item.toString()),
          onDismissed: (direction){
            setState(() {
              colorCodes.removeAt(index);
            });

            Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Removed - Item @index')));
          },
          background: Container(color: Colors.red),
          child: Container(
            height: 50,
            color: Colors.amber[colorCodes[index % 10]],
            child: Center(child: Text('Item $index')),
          ),
        );
      },
    );
  }
}

extension on ScaffoldState {
  void showSnackBar(SnackBar snackBar) {}
}