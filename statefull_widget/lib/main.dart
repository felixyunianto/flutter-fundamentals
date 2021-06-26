import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angkat = 0;

  void tambahAngka() {
    setState(() {
      angkat += 1;
    });
  }

  void kurangAngka() {
    setState(() {
      angkat -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Stateful widget")),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(angkat.toString(),
                    style: TextStyle(fontSize: 10 + angkat.toDouble())),
                Row(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children: [
                    Container(
                      margin : EdgeInsets.all(10),
                      child : ElevatedButton(
                        child: Text("Tambah"), onPressed: tambahAngka),
                    ),
                    Container(
                      margin : EdgeInsets.all(10),
                      child : ElevatedButton(
                        child: Text("Kurang"), onPressed: kurangAngka),
                    ),
                  ],
                )
              ],
            ))));
  }
}
