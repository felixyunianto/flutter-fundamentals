import 'dart:math';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColorfullButton extends StatefulWidget {
  Color mainColor, secondColor;
  IconData iconData;
  ColorfullButton(this.mainColor, this.secondColor, this.iconData);

  @override
  _ColorfullButtonState createState() =>
      _ColorfullButtonState(mainColor, secondColor, iconData);
}

class _ColorfullButtonState extends State<ColorfullButton> {
  bool isPress = false;
  Color mainColor, secondColor;
  IconData iconData;

  _ColorfullButtonState(this.mainColor, this.secondColor, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPress = !isPress;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPress = !isPress;
          });
        },
        onTapCancel: () {
          setState(() {
            isPress = !isPress;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPress) ? 5 : 10,
          shadowColor: (isPress) ? secondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color: (isPress) ? secondColor : mainColor,
                      child: Transform.rotate(
                          angle: -pi / 4,
                          child: Icon(iconData, color: Colors.white)),
                    )),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
