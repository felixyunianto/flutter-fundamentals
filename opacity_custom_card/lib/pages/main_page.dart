import 'package:flutter/material.dart';
import 'package:opacity_custom_card/constants/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Custom Card Example",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(colorAppBar),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(colorBackgroundOne),
                Color(colorBackgroundTwo)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Center(
              child: SizedBox(
                width: size.width * 0.8,
                height: size.height * 0.7,
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: [
                      Opacity(
                          opacity: 0.7,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                                      fit: BoxFit.cover)))),
                      Container(
                        height: size.height * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20, 50 + size.height * 0.35, 20, 20),
                        child: Center(
                          child: Column(
                            children: [
                              Text("Beautiful Sunset at Paddy Field",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(colorBackgroundTwo),
                                      fontSize: 25)),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Posted on  ",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12)),
                                    Text("June 18, 2019",
                                        style: TextStyle(
                                            color: Color(colorBackgroundTwo),
                                            fontSize: 12))
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Spacer(
                                    flex: 10,
                                  ),
                                  Icon(Icons.thumb_up,
                                      size: 18, color: Colors.grey),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text("99",
                                      style: TextStyle(color: Colors.grey)),
                                  Spacer(
                                    flex: 5,
                                  ),
                                  Icon(Icons.comment,
                                      size: 18, color: Colors.grey),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text("888",
                                      style: TextStyle(color: Colors.grey)),
                                  Spacer(
                                    flex: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
