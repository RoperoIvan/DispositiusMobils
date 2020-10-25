import 'package:flutter/material.dart';

class ReviewInfo extends StatelessWidget {
  final String stars;
  final String numReviews;
  ReviewInfo({
    @required this.stars,
    @required this.numReviews,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[800],
                size: 38,
              ),
              Text(
                "$stars",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Loew',
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
        Text(
          "$numReviews reviews",
          style: TextStyle(
            color: Colors.grey[200],
            fontFamily: 'Loew',
            fontSize: 12,
          ),
        ),
        
      ],
    );
  }
}
