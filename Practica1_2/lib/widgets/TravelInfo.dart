import 'package:flutter/material.dart';
import 'dart:math';

class TravelInfo extends StatelessWidget {
  final IconData iconElement;
  final double rotation;
  final String title;
  final String text1;
  final double sizeText1;
  final String text2;
  final double sizeText2;

  const TravelInfo(
      {@required this.iconElement,
      @required this.rotation,
      @required this.title,
      @required this.text1,
      @required this.sizeText1,
      @required this.text2,
      @required this.sizeText2});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Transform.rotate(
        angle: rotation * pi / 180,
        child: Icon(
          iconElement,
          size: 45,
          color: Theme.of(context).primaryColor,
        ),
      ),
      SizedBox(width: 10),
      Column(
        children: [
          Text(
            "$title",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[300],
              fontSize: 12,
              fontFamily: 'Loew',
            ),
          ),
          Row(
            children: [
              Text(
                "$text1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: sizeText1,
                  fontFamily: 'Loew',
                ),
              ),
              Text(
                "$text2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: sizeText2,
                  fontFamily: 'Loew',
                ),
              ),
            ],
          )
        ],
      )
    ]);
  }
}
