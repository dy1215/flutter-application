import 'package:flutter/material.dart';

class LMaterialWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(padding: const EdgeInsets.all(16.0),
    child: MaterialApp(

      home: Scaffold(
        backgroundColor: Theme
        .of(context)
        .colorScheme.secondary
        .withOpacity(0.5),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('Creating Material App'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('A Convenience widget that' 
            'wraps a number of widget that are' 
            'commenly required for applications'
            'implementing Material Design.'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 25.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: ()=> Navigator.pop(context),child: Text('Home'),),
        ) ,
      debugShowCheckedModeBanner: false,
      ),
    );
  }
}