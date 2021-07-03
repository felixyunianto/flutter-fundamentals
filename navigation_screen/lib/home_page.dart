import 'package:flutter/material.dart';
import 'package:navigation_screen/second_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Home Page")),
            body: Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondPage();
                      }));
                    },
                    child: Text("Go to Second Page")))));
  }
}
