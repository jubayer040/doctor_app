import 'package:doctor_app/constants/home_const.dart';
// import 'package:doctor_app/screens/beneficary/doc_screen.dart';
// import 'package:doctor_app/screens/beneficary/message_screen.dart';
// import 'package:doctor_app/screens/beneficary/profile_screen.dart';
// import 'package:doctor_app/screens/beneficary/video_call_screen.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key, required this.selectedIndex});
  final ValueNotifier selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              selectedIndex.value = 0;
              //Navigator.pushNamed(context, HomeScreen.routeName);
            },
            icon: const Icon(Icons.home_outlined, color: homeSecondary),
          ),
          IconButton(
            onPressed: () {
              selectedIndex.value = 1;
              //Navigator.pushNamed(context, DashBoardScreen.routeName);
            },
            icon: const Icon(Icons.dashboard_outlined, color: homeSecondary),
          ),
          IconButton(
            onPressed: () {
              selectedIndex.value = 2;
              //Navigator.pushNamed(context, DoctorsScreen.routeName);
            },
            icon: const Icon(Icons.medical_services_outlined,
                color: homeSecondary),
          ),
          IconButton(
            onPressed: () {
              selectedIndex.value = 3;
              //Navigator.pushNamed(context, VideoCallScreen.routeName);
            },
            icon: const Icon(Icons.video_camera_front_outlined,
                color: homeSecondary),
          ),
          IconButton(
            onPressed: () {
              selectedIndex.value = 4;
              //Navigator.pushNamed(context, MessageScreen.routeName);
            },
            icon: const Icon(Icons.message_outlined, color: homeSecondary),
          ),
          IconButton(
            onPressed: () {
              selectedIndex.value = 5;
              //Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            icon: const Icon(Icons.people_outline, color: homeSecondary),
          ),
        ],
      ),
    );
  }
}
