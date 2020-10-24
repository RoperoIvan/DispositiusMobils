import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';


class ToursApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(       
        primarySwatch: Colors.amber,
        primaryColor:Colors.amber[900],
      ),
      home: BuyTourInfoScreen(),
    );
  }
}