import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget appLogoWidget() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.white,
    ),
    height: 77,
    width: 77,
    padding: EdgeInsets.all(8),
    child: Image.asset(icAppLogo),
  );
}
