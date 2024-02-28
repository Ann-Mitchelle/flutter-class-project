import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/route_manager.dart';
import 'package:myapplication/login.dart';
import 'package:myapplication/utils/routes.dart';
import 'package:myapplication/views/calculator.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: "/",
    debugShowCheckedModeBanner: false,
    getPages: Routes.routes,
  ));
}
