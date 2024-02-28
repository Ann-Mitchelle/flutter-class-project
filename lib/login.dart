import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapplication/config/constants.dart';
import 'package:myapplication/utils/preferences.dart';
import 'package:myapplication/views/customButton.dart';
import 'package:myapplication/views/customText.dart';
import 'package:myapplication/views/customTextfield.dart';

TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
Pref myPrefs = Pref();

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    myPrefs.getValue("username").then((value) {
      userNameController.text = value;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("MY APP"),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColour,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "/images/logo1.png",
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                customText(
                  label: "Login Screen",
                  labelColor: primaryColor,
                  fontSize: 30,
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              const customText(label: "Username"),
              customTextField(
                userFieldController: userNameController,
                icon: Icons.person,
                hint: "username",
              ),
              const customText(label: "Password"),
              customTextField(
                userFieldController: passwordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
                hint: "password",
              ),
              const SizedBox(
                height: 30,
              ),
              customButton(
                buttonLabel: "login",
                action: gotoLogin,
              ),
              /*MaterialButton(
                onPressed: () {
                  Get.toNamed("/calculator");
                },
                child: Text("Login"),
                color: primaryColor,
                textColor: appWhiteColour,
                height: 60,
                minWidth: double.maxFinite,
              ),*/
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const customText(label: "Forgot password?"),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: const customText(
                      label: "Recover",
                      labelColor: primaryColor,
                    ),
                    onTap: () {
                      print("Recover");
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customText(label: "No account yet?"),
                  SizedBox(
                    width: 10,
                  ),
                  customText(
                    label: "Register",
                    labelColor: primaryColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void gotoLogin() {
    myPrefs.setValue("username", userNameController.text);
    Get.toNamed("/Home");
  }
}
