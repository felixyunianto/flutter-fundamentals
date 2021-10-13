import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double padding = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text("Animated Padding"),
      ),
      body: Column(children: [
        Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      padding: EdgeInsets.all(padding),
                      duration: Duration(seconds: 1),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            padding = 10;
                          });
                        },
                        child: Container(
                            color: Colors.red,
                            child: Center(
                                child: Text(
                              "10",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(padding),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              padding = 15;
                            });
                          },
                          child: Container(
                              color: Colors.blue,
                              child: Center(
                                  child: Text(
                                "15",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ))),
              ],
            )),
        Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(padding),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              padding = 20;
                            });
                          },
                          child: Container(
                              color: Colors.yellow,
                              child: Center(
                                  child: Text(
                                "20",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ))),
                Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(padding),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              padding = 25;
                            });
                          },
                          child: Container(
                              color: Colors.green,
                              child: Center(
                                  child: Text(
                                "25",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ))),
              ],
            ))
      ]),
    ));
  }
}
