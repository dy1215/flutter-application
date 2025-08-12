import 'package:flutter/material.dart';
import 'package:projectflutterapp2/animateicon.dart';
import 'package:projectflutterapp2/animation2.dart';
import 'package:projectflutterapp2/buttonapp.dart';
import 'package:projectflutterapp2/containerapp.dart';
import 'package:projectflutterapp2/cupertino2.dart';
import 'package:projectflutterapp2/drawer.dart';
import 'package:projectflutterapp2/expandedapp.dart';
import 'package:projectflutterapp2/gridapp.dart';
import 'package:projectflutterapp2/iconapp.dart';
import 'package:projectflutterapp2/materialapp.dart';
import 'package:projectflutterapp2/scaffoldapp.dart';
import 'package:projectflutterapp2/silverappdemo.dart';
import 'package:projectflutterapp2/sizedapp.dart';
import 'package:projectflutterapp2/slivergrid.dart';
import 'package:projectflutterapp2/sliverlist.dart';
import 'package:projectflutterapp2/snackbar.dart';
import 'package:projectflutterapp2/stackapp.dart';
import 'package:projectflutterapp2/textapp.dart';
import 'package:projectflutterapp2/wrapapp.dart';

void main(){
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ListView(

          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LMaterialWidget()),
                  );
                },child: Text('Material App Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LScaffoldWidget()),
                  );
                },child: Text('Scaffold App Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LContainerWidget()),
                  );
                },child: Text('COntainer App Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LWidget()),
                  );
                },child: Text('Text App Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LBWidget()),
                  );
                },child: Text('Button App Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LSWidget()),
                  );
                },child: Text('SnackBar App Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LIcon()),
                  );
                },child: Text('Icon Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LGrid()),
                  );
                },child: Text('Grid Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LSilverAppBar()),
                  );
                },child: Text('Sliver App Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LSliverList()),
                  );
                },child: Text('Sliver List Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LSliverGrid()),
                  );
                },child: Text('Sliver Grid Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LAnimateIcon()),
                  );
                },child: Text('Animated Icon Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LExpanded()),
                  );
                },child: Text('Expanded Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LWrap()),
                  );
                },child: Text('Wrap Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LStack()),
                  );
                },child: Text('StackApp Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LSizedBox()),
                  );
                },child: Text('SizedBox Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LHero(title: '',)),
                  );
                },child: Text('Another Animation Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LCupertinoPageScaffoldWidget()),
                  );
                },child: Text('Cupertino Page Demo Example'),),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>LDrawer()),
                  );
                },child: Text('Navigation Drawer  Demo Example'),),
              ],
            )
          ],
        ),
      ),
    );
  }
  
  RaisedButton({required Text child, required Null Function() onPressed}) {}
}

