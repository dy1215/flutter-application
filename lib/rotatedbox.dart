import 'package:flutter/material.dart';

class LRotatedBox extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 1,
            child: Container(
              color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hello World 1'),
                )
              ),
            ),
            RotatedBox(
              quarterTurns: 2,
              child: Container(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello World 2'),
                  )
              ),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Container(
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello World 3'),
                  )
                ),
              ),
              RotatedBox(
                quarterTurns: 4,
                child: Container(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Hello World 4'),  
                    )
                  ),
                ),
        ],
      ),
    );
  }
}