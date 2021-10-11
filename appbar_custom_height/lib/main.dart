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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.amber,
            flexibleSpace: Stack(
              children: [
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Text("App bar with Custom Height",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
