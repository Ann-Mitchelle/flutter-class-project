import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapplication/controllers/calculatorcontroller.dart';
import 'package:myapplication/utils/database.dart';
import 'package:myapplication/views/customButton.dart';
import 'package:myapplication/views/customText.dart';
import 'package:myapplication/views/customTextfield.dart';

class Calculator extends StatelessWidget {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  CalculatorController calculatorController = Get.put(CalculatorController());
  double sum = 0.0;

  Calculator({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          customTextField(userFieldController: num1Controller),
          SizedBox(
            height: 30,
          ),
          customTextField(userFieldController: num2Controller),
          SizedBox(
            height: 30,
          ),

          customTextField(userFieldController: nameController),
          //customButton(buttonLabel: "Calculate"),
          ElevatedButton(
              onPressed: () async {
                double a = double.parse(num1Controller.text);
                double b = double.parse(num2Controller.text);
                String name = nameController.text;
                double s = a + b;
                calculatorController.updateValues(a, b, name);
                calculatorController.updateSum(s);
                MyDatabase db = MyDatabase();
                await db.openDB();
                db.writeRec(1, "Jane");
                db.writeRec(2, "John");
              },
              child: Text("Calculate")),
          SizedBox(
            height: 30,
          ),
          Obx(() => customText(
              label:
                  "The sum of ${calculatorController.a} and ${calculatorController.b} is ${calculatorController.sum} Congratulations ${calculatorController.name}")),
        ],
      ),
    );
  }
}
