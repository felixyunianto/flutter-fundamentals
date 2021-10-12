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
        title: Text("Gradient Opacity"),
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (Rect reactangle) {
            return LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                .createShader(
                    Rect.fromLTRB(0, 0, reactangle.width, reactangle.height));
          },
          blendMode : BlendMode.dstIn,
          child: Image(
            width: 300,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1633113089631-6456cccaadad?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80"),
          ),
        ),
      ),
    ));
  }
}
