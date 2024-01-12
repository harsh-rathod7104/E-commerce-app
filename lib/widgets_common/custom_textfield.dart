import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customTextField({
  String? title,
  String? hint,
  controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title.toString(),
        style: TextStyle(
          color: redColor,
          fontFamily: semibold,
          fontSize: 16,
        ),
      ),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontFamily: semibold, color: textfieldGrey),
          isDense: true,
          border: InputBorder.none,
          filled: true,
          fillColor: lightGrey,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: redColor),
          ),
        ),
      ),
    ],
  );
}
