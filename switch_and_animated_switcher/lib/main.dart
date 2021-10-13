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
  bool isON = false;
  Widget myWidget = Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Switch"),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedSwitcher(
                        transitionBuilder: (child, animation) =>
                            // ScaleTransition(scale: animation, child: child),
                            RotationTransition(turns: animation, child: child),
                        child: myWidget,
                        duration: Duration(seconds: 1)),
                    Switch(
                        value: isON,
                        activeColor: Colors.green,
                        inactiveThumbColor: Colors.red,
                        inactiveTrackColor: Colors.red[200],
                        onChanged: (value) {
                          isON = value;
                          setState(() {
                            if (isON)
                              myWidget = Container(
                                key: ValueKey(1),
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                      color: Colors.green));
                            else
                              myWidget = Container(
                                key: ValueKey(2),
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                      color: Colors.red));
                          });
                        })
                  ]),
            )));
  }
}
