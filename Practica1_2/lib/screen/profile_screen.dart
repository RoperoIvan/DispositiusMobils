import '../widgets/TravelInfo.dart';

import '../widgets/reviewInfo.dart';
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
          _BottomBox(),
          _NameRatingInfo(),
          _SaveButton(),
          _InfoTour(),
          _TextGradient(),
          _BookNow()
        ],
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        alignment: Alignment(1.0 ,0.23),
        child: Container(
          //alignment: Alignment.centerRight,
          width: 80,
          height: 80,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
            child: Icon(Icons.bookmark,
                color: Theme.of(context).primaryColor, size: 36),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class _InfoTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _TopOptions();
  }
}

class _BottomBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 2 / 5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _BoxTitle(),
                _RelevantInfo(),
                Text(
                  "During your Antelope Conyon tour, "
                  "you'll see how Antelope Canyon was "
                  "formed - by millions of years of rain"
                  " waters and wind creating an",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Loew',
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class _RelevantInfo extends StatelessWidget {
  const _RelevantInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TravelInfo(
          iconElement: Icons.local_offer,
          rotation: 90,
          title: "PRICE                ", //fix
          text1: "from",
          sizeText1: 15,
          text2: " \$158",
          sizeText2: 20,
        ),
        TravelInfo(
          iconElement: Icons.access_time,
          rotation: 1,
          title: "DURATION",
          text1: "3",
          sizeText1: 20,
          text2: " hours",
          sizeText2: 15,
        ),
      ],
    );
  }
}

class _BoxTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(children: [
          Text(
            "Overview",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'Loew',
            ),
          ),
          Icon(
            Icons.brightness_1,
            size: 8,
            color: Theme.of(context).primaryColor,
          ),
        ]),
        Column(children: [
          Text(
            "Reviews",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              fontFamily: 'Loew',
            ),
          ),
          SizedBox(
            height: 7,
          )
        ]),
        SizedBox(width: MediaQuery.of(context).size.width * 1.1 / 5) //fix
      ]),
    );
  }
}

class _BookNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        child: RawMaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          fillColor: Colors.amber[900],
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Book Now",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Loew',
                fontSize: 20,
              ),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class TopInfoTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          _TopOptions(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1.7 / 6,
          ),
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Breathtaking Antelope Canyon Tour",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Loew',
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              height: 98,
              width: 140,
              child: ReviewInfo(
                stars: "5.0",
                numReviews: "472",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //Top Grading
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
          //Bottom Grading
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.5),
                Color.fromRGBO(0, 0, 0, 0),
              ],
              begin: Alignment(0, 0.2),
              end: Alignment(0, -0.1),
            ),
          ),
        ),
      ],
    );
  }
}

class _TextGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(255, 255, 255, 0),
            Color.fromRGBO(255, 255, 255, 1),
          ],
          begin: Alignment(0, 0.5),
          end: Alignment(0, 0.83),
        ),
      ),
    );
  }
}
