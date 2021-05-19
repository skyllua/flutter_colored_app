import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testing_application/button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String _text = "HEY THERE!";
  static int _width = 3;
  static int _startMagic = 5;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: MyButton(),
      ),
    );
  }

  static String get text => _text;

  static int get width => _width;

  static int get startMagic => _startMagic;
}


