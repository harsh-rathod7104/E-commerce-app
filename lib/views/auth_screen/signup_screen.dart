import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/widgets_common/app_logo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/button.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                Text("Join the  $appname",
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
                      customTextField(hint: nameHint, title: name),
                      HeightBox(MediaQuery.of(context).size.height * 0.009),
                      customTextField(hint: emailHint, title: email),
                      HeightBox(MediaQuery.of(context).size.height * 0.009),
                      customTextField(hint: passwordHint, title: password),
                      HeightBox(MediaQuery.of(context).size.height * 0.009),
                      customTextField(
                          hint: passwordHint, title: retypePassword),
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
                      Row(
                        children: [
                          Checkbox(
                            checkColor: redColor,
                            value: false,
                            onChanged: (newValue) {},
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "I agree to the",
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: fontGrey,
                                  ),
                                ),
                                TextSpan(
                                  text: termAndCond,
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: redColor,
                                  ),
                                ),
                                TextSpan(
                                  text: " & ",
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: redColor,
                                  ),
                                ),
                                TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: redColor,
                                  ),
                                ),
                              ]),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: myButton(
                          color: redColor,
                          title: signup,
                          textColor: whiteColor,
                        ),
                      ),
                      HeightBox(MediaQuery.of(context).size.height * 0.02),
                      //wrap into gesture detector
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: alreadyHaveAccount,
                                  style: TextStyle(
                                    color: fontGrey,
                                    fontFamily: bold,
                                  )),
                              TextSpan(
                                  text: login,
                                  style: TextStyle(
                                    color: redColor,
                                    fontFamily: bold,
                                  ))
                            ],
                          ),
                        ),
                      ),
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
