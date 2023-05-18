import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/screens/beneficary/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/screens/beneficary/dashboard_screen.dart';
import 'package:doctor_app/screens/beneficary/doc_screen.dart';
import 'package:doctor_app/screens/beneficary/message_screen.dart';
import 'package:doctor_app/screens/beneficary/profile_screen.dart';
import 'package:doctor_app/screens/beneficary/video_call_screen.dart';
import 'package:doctor_app/widgets/beneficary_widgets/home_widgets/home_navbar.dart';

class Home2 extends StatefulWidget {
  static const routeName = '/home-2';
  const Home2({super.key});
  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  final selectedIndex = ValueNotifier<int>(0);
  final pages = [
    const HomeScreen(),
    const DoctorsScreen(),
    const DashBoardScreen(),
    const VideoCallScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ashhLight,
      body: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, val, _) => pages[val],
      ),
      bottomNavigationBar: HomeNavBar(selectedIndex: selectedIndex),
    );
  }
}
