import 'package:doctor_app/screens/beneficary/dashboard_screen.dart';
import 'package:doctor_app/screens/beneficary/doc_details_screen.dart';
import 'package:doctor_app/screens/beneficary/doc_screen.dart';
import 'package:doctor_app/screens/beneficary/home_screen.dart';
import 'package:doctor_app/screens/beneficary/profile_screen.dart';
import 'package:doctor_app/screens/beneficary/video_call_screen.dart';
import 'package:doctor_app/screens/login_screen.dart';
import 'package:doctor_app/screens/home.dart';
import 'package:doctor_app/screens/p_home.dart';
import 'package:doctor_app/screens/provider/p_home_screen.dart';
import 'package:doctor_app/screens/provider/p_patients_screen.dart';
import 'package:doctor_app/screens/provider/p_profile_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      case PHome.routeName:
        return MaterialPageRoute(builder: (context) => const PHome());

      case Home.routeName:
        return MaterialPageRoute(builder: (context) => const Home());

      // Beneficary routes
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case DocDetailsScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => const DocDetailsScreen());

      case VideoCallScreen.routeName:
        return MaterialPageRoute(builder: (context) => const VideoCallScreen());

      case DoctorsScreen.routeName:
        return MaterialPageRoute(builder: (context) => const DoctorsScreen());

      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());

      case DashBoardScreen.routeName:
        return MaterialPageRoute(builder: (context) => const DashBoardScreen());

      // Providers routes
      case PHomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const PHomeScreen());

      case PProfileScreen.routeName:
        return MaterialPageRoute(builder: (context) => const PProfileScreen());

      case PPatientsScreen.routeName:
        return MaterialPageRoute(builder: (context) => const PPatientsScreen());

      default:
        null;
    }
    return null;
  }
}
