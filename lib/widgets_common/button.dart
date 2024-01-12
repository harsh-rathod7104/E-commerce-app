import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget myButton({onPress, color, textColor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: color, padding: EdgeInsets.all(12)),
    onPressed: () {
      onPress();
    },
    child: Text(
      title.toString(),
      style: TextStyle(color: textColor, fontFamily: bold),
    ),
  );
}
