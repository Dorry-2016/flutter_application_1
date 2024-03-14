import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constant.dart';

import 'package:flutter_application_1/views/Customtext.dart';

class CustomButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback? action;
  const CustomButton({
    Key? key,
    required this.buttonLabel,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: Customtext(
        label: buttonLabel,
        labelColor: appWhite,
        fontsize: 30,
        fontWeight: FontWeight.bold,
        //mainAxisAlignment: MainAxisAlignment.center,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        elevation: 10,
        minimumSize: Size(60, 50),
        shadowColor: primaryColor,
      ),
    );
  }
}
