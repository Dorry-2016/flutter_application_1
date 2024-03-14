import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constant.dart';

class Customtext extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double fontSize;
  const Customtext({
    super.key,
    required this.label,
    this.labelColor = appGrey,
    this.fontSize = 15,
    required int fontsize,
    required FontWeight fontWeight,
    //required MainAxisAlignment mainAxisAlignment,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style:
          TextStyle(color: appGrey, fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}
