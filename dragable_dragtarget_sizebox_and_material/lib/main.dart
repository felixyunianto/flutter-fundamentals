import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color colorRed = Colors.red;
  Color colorAmber = Colors.amber;
  Color targetColor;
  bool isAccept = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Dragable, Dragtarget, SizeBox, and Material")),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Draggable<Color>(
                            data: colorRed,
                            child: SizedBox(
                                width: 50,
                                height: 50,
                                child: Material(
                                    shape: StadiumBorder(),
                                    color: colorRed,
                                    elevation: 3)),
                            childWhenDragging: SizedBox(
                                width: 50,
                                height: 50,
                                child: Material(
                                    shape: StadiumBorder(),
                                    color: Colors.black26,
                                    elevation: 0)),
                            feedback: SizedBox(
                                width: 50,
                                height: 50,
                                child: Material(
                                  shape: StadiumBorder(),
                                  color: colorRed.withOpacity(0.7),
                                ))),
                        Draggable<Color>(
                            data: colorAmber,
                            child: SizedBox(
                                width: 50,
                                height: 50,
                                child: Material(
                                    shape: StadiumBorder(),
                                    color: colorAmber,
                                    elevation: 3)),
                            childWhenDragging: SizedBox(
                                width: 50,
                                height: 50,
                                child: Material(
                                    shape: StadiumBorder(),
                                    color: Colors.black26,
                                    elevation: 0)),
                            feedback: SizedBox(
                                width: 50,
                                height: 50,
                                child: Material(
                                  shape: StadiumBorder(),
                                  color: colorAmber.withOpacity(0.7),
                                )))
                      ]),
                  DragTarget<Color>(
                      onWillAccept: (value) => true,
                      onAccept: (value) {
                        isAccept = true;
                        targetColor = value;
                      },
                      builder: (context, candidates, rejected) {
                        return (isAccept)
                            ? SizedBox(
                                width: 100,
                                height: 100,
                                child: Material(
                                    shape: StadiumBorder(),
                                    color: targetColor,
                                    elevation: 3))
                            : SizedBox(
                                width: 100,
                                height: 100,
                                child: Material(
                                  shape: StadiumBorder(),
                                  color: Colors.black26,
                                ));
                      })
                ])));
  }
}
