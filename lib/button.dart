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
  static int _iterator = 0;

  ButtonState() {
    for (int i = 0; i < 5 + MyApp.text.length + 5; i++) {
      if (i <= 5) _colors.add(0xFFFFFFFF);
      else _colors.add(0xFF000000);
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
    return Random().nextInt(0xFF000000) + 0xFFFFFFFF;
  }

  void _changeColor() {
    _iterator++;

    if (_iterator > MyApp.startMagic) {
      for (int i = _colors.length - 1; i >= 1; i--) {
        _colors[i] = _colors[i - 1];
      }
    }

    setState(() {
      _colors[0] = randColor();
    });

    if (_iterator <= MyApp.startMagic) {
      for (int i = 1; i < _colors.length; i++) {
        _colors[i] = _colors[0];
      }
    }
  }

  static int get iterator => _iterator;

  static List<int> get colors => _colors;
}
