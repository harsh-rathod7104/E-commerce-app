import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/logiin_screen.dart';
import 'package:emart_app/widgets_common/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
// Creating method Change Screen

  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            HeightBox(20),
            appLogoWidget(),
            HeightBox(10),
            Text(
              appname,
              style:
                  TextStyle(fontFamily: bold, fontSize: 22, color: whiteColor),
            ),
            HeightBox(5),
            Text(
              appversion,
              style: TextStyle(color: whiteColor),
            ),
            Spacer(),
            Text(
              credits,
              style: TextStyle(color: whiteColor),
            ),
            HeightBox(30),
          ],
        ),
      ),
    );
  }
}
