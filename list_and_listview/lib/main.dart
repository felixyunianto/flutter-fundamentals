import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   for (int i = 1; i < 15; i++) {
  //     widgets.add(Text("Data ke-" + i.toString()));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("List and ListView")),
            body: Container(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                widgets
                                    .add(Text("Data ke-" + counter.toString()));
                                counter++;
                              });
                            },
                            child: Text("Tambah")),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                widgets.removeLast();
                                    
                                counter--;
                              });
                            },
                            child: Text("Kurang")),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widgets)
                ],
              ),
            )));
  }
}
