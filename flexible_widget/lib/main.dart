import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Flexible Widget")),
            body: Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(flex: 1, child: Container(margin: EdgeInsets.all(5),color: Colors.orange)),
                        Flexible(flex: 1, child: Container(margin: EdgeInsets.all(5),color: Colors.green)),
                        Flexible(flex: 1, child: Container(margin: EdgeInsets.all(5),color: Colors.red)),
                      ],
                    )),
                Flexible(flex: 2, child: Container(margin: EdgeInsets.all(5),color: Colors.yellow)),
                Flexible(flex: 1, child: Container(margin: EdgeInsets.all(5),color: Colors.blue)),
              ],
            )));
  }
}
