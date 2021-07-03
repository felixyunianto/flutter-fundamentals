import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Space Widget")),
        body : Center(
          child : Row(
            children: [
              Spacer(flex: 1),
              Container(color: Colors.red, width: 80, height: 80),
              Spacer(flex: 2),
              Container(color: Colors.green, width: 80, height: 80),
              Spacer(flex: 3),
              Container(color: Colors.blue, width: 80, height: 80),
              Spacer(flex : 2),
            ],
          )
        )
      )
    );
  }
}
