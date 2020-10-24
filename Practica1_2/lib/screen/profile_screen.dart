import 'package:flutter/material.dart';

class BuyTourInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/canyon.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fitHeight),
          _ImageGradient(),
          _TopInfoTour(),
        ],
      ),
    );
  }
}

class _TopInfoTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          _TopOptions(),
          _NameRatingInfo(),
        ],
      ),
    );
  }
}

class _TopOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _NameRatingInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row();
  }
}

class _ImageGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.5),
                Color.fromRGBO(0, 0, 0, 0),
              ],
              begin: Alignment(0, -1),
              end: Alignment(0, -0.5),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.5),
                Color.fromRGBO(0, 0, 0, 0),
              ],
              begin: Alignment(0, 0.5),
              end: Alignment(0, 0.2),
            ),
          ),
        ),
      ],
    );
  }
}
