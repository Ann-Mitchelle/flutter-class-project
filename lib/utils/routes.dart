import 'package:get/get.dart';
import 'package:myapplication/login.dart';
import 'package:myapplication/views/calculator.dart';
import 'package:myapplication/views/home.dart';

class Routes {
  static var routes = [
    GetPage(
      name: "/",
      page: () => login(),
    ),
    GetPage(name: "/calculator", page: () => Calculator()),
    GetPage(name: "/Home", page: () => Home()),
  ];
}
