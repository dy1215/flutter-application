import 'package:flutter/material.dart';

class LSelectableText extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SelectableText(
            'Long Press Me ,I am Selectable',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
          ),
          SelectableText.rich(
            TextSpan(
              text: 'Hi,',
              children: <TextSpan>[
                TextSpan(
                  text: 'I am Selectable. \n\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontStyle: FontStyle.italic
                  )
                ),
                TextSpan(
                  text: 'Long Press',
                  style: TextStyle(fontStyle: FontStyle.italic,fontSize: 16)
                ),
                TextSpan(
                  text: 'and Copy me.',
                  style: TextStyle(letterSpacing: 3,fontSize: 16),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}