import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Image Widget")),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image with URL
                  Container(
                    width: 300,
                    height: 150,
                    color: Colors.red,
                    padding: EdgeInsets.all(3),
                    child: Image(
                        image: NetworkImage(
                            "https://assets-global.website-files.com/5e3c45dea042cf97f3689681/5e417cd336a72b06a86c73e7_Flutter-Tutorial-Header%402x.jpg"),
                        fit: BoxFit.cover),
                  ),
                  // Image with Local Image
                  Container(
                    width: 300,
                    height: 150,
                    color: Colors.blue,
                    padding: EdgeInsets.all(3),
                    child: Image(
                        image: AssetImage('assets/images/flutter_image.png'),
                        fit: BoxFit.cover),
                  ),
                ],
              ),
            )));
  }
}
