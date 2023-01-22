import 'package:flutter/material.dart';
import 'package:study_evaluation/view/screens/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
      //home: FirstScreen(),
    );
  }
}
