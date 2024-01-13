import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controlers/home_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // init home controler
    var controler = Get.put(HomeCotroler());

    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account),
    ];

    var navBody = [
      Container(color: Colors.green),
      Container(color: Colors.amber),
      Container(color: Colors.red),
      Container(color: Colors.cyan),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controler.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controler.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navBarItem,
          onTap: (value) {
            controler.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
