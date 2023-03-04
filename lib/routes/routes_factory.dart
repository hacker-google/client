import 'package:flutter/material.dart';
import '../views/pages/_pages.dart';
import 'package:client/main.dart';
import 'routes_name.dart';

Widget getScreenByName(String name) {
  {
    switch (name) {
      // case RoutesName.home:
      //   return const HomePage();
      // case RoutesName.signup:
      //   return const SignUpPage();
      // case RoutesName.login:
      //   return const LoginPage();
      // Add your page here
      case RoutesName.report:
        return const ReportPage();
      case RoutesName.tracker:
        return const TrackerPage();
      case RoutesName.helpFind:
        return const HelpFindPage();
      default:
        return const ReportPage();
    }
  }
}
