import 'package:flutter/material.dart';
import 'button.dart';
import 'dart:math';

class ColorBox extends StatelessWidget {
  int _color = ButtonState.colors[0];
  int _num;
  String _text;

  ColorBox(this._num, this._text);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    if (ButtonState.iterator > 5) _color = ButtonState.colors[_num];

    return Container(
      width: _width / 3,
      height: _height / 3,
      color: Color(_color),
      child: Center(
        child: Row(
          children: widgets(),
        )
      ),
    );
  }

  List<Widget> widgets() {
    List<Widget> widgets = [];

    for (int i = 0; i < _text.length; i++) {
      widgets.add(Text(
        _text[i],
        style: TextStyle(fontSize: 20, color: Color(ButtonState.colors[i+6])),
      ));
    }

    return widgets;
  }
}
