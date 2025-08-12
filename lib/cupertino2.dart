import 'package:flutter/cupertino.dart';

class LCupertinoPageScaffoldWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: CupertinoApp(
          home: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: CupertinoButton(
                padding: EdgeInsets.all(0.0),
                child: Icon(CupertinoIcons.back),
                onPressed: (){
                  Navigator.of(context, rootNavigator: true).pop();
                },
              ),
              middle: Text('Cupertino App'),
              trailing: CupertinoButton(
                padding: EdgeInsets.all(0.0),
                child: Icon(CupertinoIcons.settings),
                onPressed: (){
                  showCupertinoDialog(
                    context: context, 
                    builder: (BuildContext context)=> CupertinoAlertDialog(
                      title: const Text('Hi'),
                      content: Text("This is Cupetino Dialog"),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          onPressed: (){
                            Navigator.pop(context,"Ok");
                          },
                          child: const Text('ok'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'This is Cupertino Page Scaffold Widget',
                  style: TextStyle(color: Color.fromARGB(100,500, 0, 0 )),
                ),
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
        ),
      );
  }
}