import 'package:button_transform/colorfull_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text("Button Tranform"),),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorfullButton(Colors.pink, Colors.blue, Icons.adb),
                ColorfullButton(Colors.amber, Colors.red, Icons.comment),
                ColorfullButton(Colors.green, Colors.purple, Icons.computer),
                ColorfullButton(Colors.blue, Colors.yellow, Icons.contact_phone),
              ],
            ),
          ),
        ),
    );
  }
}