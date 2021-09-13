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
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Text Field Widget"),
            ),
            body: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    controller: controller,
                    onChanged: (value) {
                      setState(() {});
                    },
                    obscureText: true,
                    maxLength: 5,
                    decoration: InputDecoration(
                      fillColor: Colors.lightBlue[50],
                      filled: true,
                      icon: Icon(Icons.adb),
                      prefixIcon : Icon(Icons.person),
                      suffix: Container(width: 5, height: 5,color: Colors.red,),
                      prefixText: "Name : ",
                      prefixStyle: TextStyle(
                        color : Colors.blue,
                        fontWeight: FontWeight.bold
                      ),
                      labelText: "Nama Lengkap",
                      hintText: "Nama lengkapnya loh",
                      hintStyle: TextStyle(
                        fontSize: 12
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                  Text(controller.text)
                ],
              ),
            )));
  }
}
