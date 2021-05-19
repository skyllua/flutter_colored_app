import 'package:flutter/material.dart';
import 'package:testing_application/column_child_button.dart';
import 'dart:math';

import 'package:testing_application/main.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key key}) : super(key: key);

  @override
  ButtonState createState() => ButtonState();
}

class ButtonState extends State<MyButton> {
  static List<int> _colors = [];
  static List<int> _textColors = [];
  static int _iterator = 0;

  ButtonState() {
    for (int i = 0; i <= (pow(MyApp.width, 2)/2).round(); i++) {
      _colors.add(0xFFFFFFFF);
    }

    for (int i = 0; i < MyApp.text.length + 1; i++) {
       _textColors.add(0xFF000000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      padding: EdgeInsets.all(0),
      child: ColumnChildButton(),
      onPressed: _changeColor,
    );
  }

  static int randColor() {
    return Random().nextInt(0xFFFFFF) + 0xFF000000;
  }

  void _changeColor() {
    _iterator++;

    if (_iterator > MyApp.startMagic) {
      for (int i = _colors.length - 1; i >= 1; i--) {
        _colors[i] = _colors[i - 1];
      }
      for (int i = _textColors.length - 1; i >= 1; i--) {
        _textColors[i] = _textColors[i - 1];
      }
    }

    setState(() {
      _colors[0] = randColor();
      _textColors[0] = randColor();
    });

    if (_iterator <= MyApp.startMagic) {
      for (int i = 1; i < MyApp.startMagic; i++) {
        _colors[i] = _colors[0];
      }
    }
  }

  static int get iterator => _iterator;

  static List<int> get colors => _colors;

  static List<int> get textColors => _textColors;
}
