import 'package:doctor_app/screens/beneficary/dashboard_screen.dart';
import 'package:doctor_app/screens/beneficary/doc_details_screen.dart';
import 'package:doctor_app/screens/beneficary/doc_screen.dart';
import 'package:doctor_app/screens/beneficary/home_screen.dart';
import 'package:doctor_app/screens/beneficary/message_screen.dart';
import 'package:doctor_app/screens/beneficary/profile_screen.dart';
import 'package:doctor_app/screens/beneficary/video_call_screen.dart';
import 'package:doctor_app/screens/home.dart';
import 'package:doctor_app/screens/provider/p_home_screen.dart';
import 'package:doctor_app/screens/provider/p_profile_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(builder: (context) => const Home());

      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case DocDetailsScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => const DocDetailsScreen());

      case VideoCallScreen.routeName:
        return MaterialPageRoute(builder: (context) => const VideoCallScreen());

      case MessageScreen.routeName:
        return MaterialPageRoute(builder: (context) => const MessageScreen());

      case DoctorsScreen.routeName:
        return MaterialPageRoute(builder: (context) => const DoctorsScreen());

      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());

      case DashBoardScreen.routeName:
        return MaterialPageRoute(builder: (context) => const DashBoardScreen());

      case PHomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const PHomeScreen());

      case PProfileScreen.routeName:
        return MaterialPageRoute(builder: (context) => const PProfileScreen());

      default:
        null;
    }
    return null;
  }
}
