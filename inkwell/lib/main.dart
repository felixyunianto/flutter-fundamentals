import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Inkwell"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Button"),
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.amber,
                    minimumSize: Size(88, 36),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: StadiumBorder()),
              ),
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                      begin: Alignment.topCenter,
                      end : Alignment.bottomCenter
                    )
                  ),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.amber,
                      onTap: (){},
                      child: Center(child: Text("My Button", style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold
                      ),),),
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
