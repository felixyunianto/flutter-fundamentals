import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar : AppBar(title : Text("Row and Column")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Row(
              children : [
                Text("Text 4"),
                Text("Text 5"),
                Text("Text 6"),
              ]
            )
          ],
        )
      )
    );
  }
}