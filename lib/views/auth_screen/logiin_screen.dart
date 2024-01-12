import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/widgets_common/app_logo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/button.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                HeightBox(MediaQuery.of(context).size.height * 0.10),
                appLogoWidget(),
                HeightBox(10),
                Text("Log in to $appname",
                    style: TextStyle(color: whiteColor, fontFamily: bold)),
                HeightBox(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.80,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 0.1,
                        blurRadius: 100,
                      ),
                    ],
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      customTextField(hint: emailHint, title: email),
                      HeightBox(MediaQuery.of(context).size.height * 0.009),
                      customTextField(hint: passwordHint, title: password),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            forgetPass,
                            style: TextStyle(fontFamily: bold),
                          ),
                        ),
                      ),
                      HeightBox(5),
                      Container(
                        width: double.infinity,
                        child: myButton(
                            color: redColor,
                            title: login,
                            textColor: whiteColor),
                      ),
                      HeightBox(MediaQuery.of(context).size.height * 0.02),
                      Text(createNewAc),
                      HeightBox(MediaQuery.of(context).size.height * 0.01),
                      Container(
                        width: double.infinity,
                        child: myButton(
                            title: signup,
                            color: lighGolden,
                            textColor: redColor,
                            onPress: () {
                              Get.to(() => SignUp());
                            }),
                      ),
                      HeightBox(MediaQuery.of(context).size.height * 0.02),
                      Text(loginWith),
                      HeightBox(MediaQuery.of(context).size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
