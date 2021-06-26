import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah text";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Anonymous Method")),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(message),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        message = "Tombol sudah ditekan";
                      });
                    },
                    child: Text("Tekan saya"))
              ],
            ))));
  }
}
