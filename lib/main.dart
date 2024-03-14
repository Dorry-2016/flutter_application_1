import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: "/",
    debugShowCheckedModeBanner: false,
    getPages: Routes.routes,
  ));
}
