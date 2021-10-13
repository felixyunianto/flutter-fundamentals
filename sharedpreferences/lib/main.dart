import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("name", controller.text);
    pref.setBool("isON", isON);
  }

  Future<String> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    return pref.getString("name") ?? "No Name";
  }

  Future<bool> getBool() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    return pref.getBool("isON") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Shared Preferences"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                ),
                Switch(
                    value: isON,
                    onChanged: (value) {
                      setState(() {
                        isON = value;
                      });
                    }),
                ElevatedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: Text("Save"),
                ),
                ElevatedButton(
                  onPressed: () {
                    getName().then((value) {
                      controller.text = value;
                      setState(() {});
                    });

                    getBool().then((value) {
                      isON = value;
                      setState(() {});
                    });
                  },
                  child: Text("Load"),
                )
              ],
            )));
  }
}
