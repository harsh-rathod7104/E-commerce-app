import 'package:emart_app/views/spash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
        ),
        fontFamily: regular,
      ),
      home: SplashScreen(),
    );
  }
}
