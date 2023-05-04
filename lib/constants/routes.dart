import 'package:doctor_app/screens/doc_details_screen.dart';
import 'package:doctor_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case DocDetailsScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => const DocDetailsScreen());
      default:
        null;
    }
    return null;
  }
}
