import 'package:flutter/material.dart';

class LWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LTextWidget(),
    );
  }
}

class LTextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Simple Text"),
            Text(
              'Overflow Text will skipped automatically. so lets have some long text to get skipped',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
            ),
            Text.rich(
              TextSpan(
                text: 'Hi, I am',
                children: <TextSpan>[
                  TextSpan(
                    text: 'Italic,',
                    style: TextStyle(fontStyle: FontStyle.italic)
                  ),
                  TextSpan(
                    text: 'Normal',
                    style: TextStyle(fontWeight: FontWeight.normal)
                  ),
                ] 
              ),
            ),
            RichText(
              softWrap: true,
              text: TextSpan(
                text: 'I am',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'RichText',
                    style: TextStyle(color: Colors.green,fontSize: 24)
                  ),
                  TextSpan(
                    text: 'Similar to',
                    style: TextStyle(fontStyle: FontStyle.italic)
                  ),
                  TextSpan(
                    text: 'Text.rich',
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}