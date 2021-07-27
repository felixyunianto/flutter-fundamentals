import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body : Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.account_box, "Account"),
              buildCard(Icons.person, "Username"),
              buildCard(Icons.lock, "Password"),
            ],
          ),
        )
      )
    );
  }

  Card buildCard(IconData icon, String text) {
    return Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(margin : EdgeInsets.all(5),
                    child: Icon(icon, color: Colors.blue)
                  ),
                  Text(text)
                ],
              )
            );
  }
}