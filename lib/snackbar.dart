import 'package:flutter/material.dart';
 
class LSWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:  LSnackBar(),
    );
  }
}

class LSnackBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text("Simple SnackBar Demo"),
              onPressed:(){
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Simple SnackBar Demo"),
                ));
              },
            ),
            FlatButton(
              child: Text("Colored SnackBar - 0.5 Second"),
              onPressed:(){
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(
                    "SnackBar for 0.5 seconds",
                    style: TextStyle(color: Colors.red),
                  ),
                  duration: Duration(milliseconds: 500),
                  backgroundColor: Colors.lightGreenAccent,
                ));
              },
            ),
            FlatButton(
              child:Text("Snackbar With Image"),
              onPressed: (){
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        "Hi ",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  duration: Duration(seconds: 1),
                  backgroundColor: Colors.limeAccent,
                ));
              },
            )
          ],
        ),
      )
    );
  }
  
  FlatButton({required Text child, required Null Function() onPressed}) {}
}

extension on ScaffoldState {
  void showSnackBar(SnackBar snackBar) {}
}