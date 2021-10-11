import 'package:flutter/material.dart';
import 'package:positioned_and_fab/constans/colors.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double getSmallDiameter(BuildContext context) => size.width * 2 / 3;
    double getBigDiameter(BuildContext context) => size.width * 7 / 8;

    return Scaffold(
      backgroundColor: Color(colorGray),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(colorOne), Color(colorTwo)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  "dribblee",
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(colorOne), Color(colorThird)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            right: -getSmallDiameter(context) / 2,
            bottom: -getSmallDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(colorFourth),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(colorThird),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(colorThird))),
                            labelText: "Email : ",
                            labelStyle: TextStyle(color: Color(colorThird))),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color(colorThird),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(colorThird))),
                            labelText: "Password : ",
                            labelStyle: TextStyle(color: Color(colorThird))),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 20, right: 20),
                      child: Text("FORGOT PASSWORD?",
                          style: TextStyle(
                              color: Color(colorThird), fontSize: 13))),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: size.width * 0.5,
                            height: 40,
                            child: Container(
                              child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.transparent,
                                  child: InkWell(
                                      borderRadius: BorderRadius.circular(20),
                                      splashColor: Color(colorThird),
                                      onTap: () {},
                                      child: Center(
                                        child: Text("SIGN IN",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                      ))),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(colorOne),
                                        Color(colorThird)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)),
                            )),
                        FloatingActionButton(
                            mini: true,
                            elevation: 0,
                            onPressed: () {},
                            child: Image(
                                image: AssetImage('assets/facebook.png'))),
                        FloatingActionButton(
                            mini: true,
                            elevation: 0,
                            onPressed: () {},
                            child:
                                Image(image: AssetImage('assets/twitter.png')))
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("DON'T HAVE AN ACCOUNT ?   ",
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500)),
                    Text("SIGN UP",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(colorThird),
                            fontWeight: FontWeight.w500))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
