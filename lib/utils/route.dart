import "package:flutter_application_1/views/aboutus.dart";
import "package:flutter_application_1/views/dashboard.dart";
import "package:flutter_application_1/views/home.dart";
import "package:flutter_application_1/views/login.dart";
import "package:flutter_application_1/views/registration.dart";

import "package:get/get.dart";

class Routes {
  static var routes = [
    GetPage(name: '/dashboard', page: () => DashboardScreen()),
    GetPage(name: '/', page: () => Login()),
    GetPage(name: '/register', page: () => Registration()),
    GetPage(name: '/home', page: () => MyHome()),
    GetPage(name: '/aboutus', page: () => AboutUs()),
  ];
}
