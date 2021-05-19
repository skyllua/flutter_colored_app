import 'package:flutter/material.dart';
import 'package:testing_application/color_box.dart';
import 'package:testing_application/main.dart';

class ColumnChildButton extends StatelessWidget {
  const ColumnChildButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            ColorBox(0, ""),
            ColorBox(1, ""),
            ColorBox(2, ""),
          ],
        ),
        Row(
          children: <Widget>[
            ColorBox(3, ""),
            ColorBox(4, MyApp.text),
            ColorBox(3, ""),
          ],
        ),
        Row(
          children: <Widget>[
            ColorBox(2, ""),
            ColorBox(1, ""),
            ColorBox(0, ""),
          ],
        ),
      ],
    );
  }
}
