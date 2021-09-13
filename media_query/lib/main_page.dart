import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Media Query")),
        // body: Container(
        //   width: MediaQuery.of(context).size.width / 3,
        //   height: MediaQuery.of(context).size.height / 2,
        //   color : Colors.red
        // )
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainers,
              )
            : Row(
                children: generateContainers,
              ));
  }

  List<Widget> get generateContainers => [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ];
}
