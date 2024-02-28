import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myapplication/controllers/homecontroller.dart';
import 'package:myapplication/studentlist.dart';
import 'package:myapplication/views/calculator.dart';

HomeController homeController = Get.put(HomeController());
var screens = [
  Calculator(),
  Students(),
  Text("Profile"),
  Text("Settings"),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            color: Colors.blueAccent,
            backgroundColor: Colors.white,
            buttonBackgroundColor: const Color.fromARGB(255, 75, 133, 233),
            items: [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              )
            ],
            onTap: (index) {
              homeController.updateSelectedPage(index);
            }),
        body: Obx(() => Center(
              child: screens[homeController.selectedPage.value],
            )));
  }
}
