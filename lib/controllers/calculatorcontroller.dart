import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CalculatorController extends GetxController {
  var sum = 0.0.obs;
  var a = 0.0.obs;
  var b = 0.0.obs;
  var name = "".obs;
  updateSum(newSum) {
    sum.value = newSum;
  }

  updateValues(newA, newB, newName) {
    a.value = newA;
    b.value = newB;
    name.value = newName;
  }
}
