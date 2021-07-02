import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title: Text("Stack and Align Widget")),
        body : Stack(
          children : <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child : Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child : Container(
                          color : Colors.white
                        )
                      ),
                      Flexible(
                        flex: 1,
                        child : Container(
                          color : Colors.black12
                        )
                      )
                    ]
                  )
                ),
                Flexible(
                  flex: 1,
                  child : Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child : Container(
                          color : Colors.black12
                        )
                      ),
                      Flexible(
                        flex: 1,
                        child : Container(
                          color : Colors.white
                        )
                      )
                    ]
                  )
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child : Text("Ini adalah text yang berada pada lapisan tengah stack", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : Text("Ini adalah text yang berada pada lapisan tengah stack", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : Text("Ini adalah text yang berada pada lapisan tengah stack", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : Text("Ini adalah text yang berada pada lapisan tengah stack", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : Text("Ini adalah text yang berada pada lapisan tengah stack", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : Text("Ini adalah text yang berada pada lapisan tengah stack", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : Text("Ini adalah text yang berada pada lapisan tengah stack", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : Text("Ini adalah text yang berada pada lapisan tengah stack", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child : Text("Ini adalah text yang berada pada lapisan tengah stack", style: TextStyle(fontSize: 30)),
                    ),
                  ]
                )
              ]
            ),
            Align(
              alignment: Alignment(0, 0.9),
              child: ElevatedButton(
                onPressed: () {  },
                child: Text("My Button"),
                
              )
            )
          ]
        )
      )
    );
  }
}