import 'package:flutter/material.dart';
import 'package:myapplication/views/customText.dart';

import '../config/constants.dart';

class customButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback? action;
  const customButton({
    super.key,
    required this.buttonLabel,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: customText(
        label: buttonLabel,
        labelColor: appWhiteColour,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          elevation: 10,
          padding: const EdgeInsets.all(15)),
    );
  }
}
