import 'package:doctor_app/constants/home_const.dart';
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
            onPressed: () => selectedIndex.value = 0,
            icon: const Icon(Icons.home_outlined, color: blueSecondary),
          ),
          IconButton(
            onPressed: () => selectedIndex.value = 1,
            icon: const Icon(Icons.dashboard_outlined, color: blueSecondary),
          ),
          IconButton(
            onPressed: () => selectedIndex.value = 2,
            icon: const Icon(Icons.medical_services_outlined,
                color: blueSecondary),
          ),
          IconButton(
            onPressed: () => selectedIndex.value = 3,
            icon: const Icon(Icons.video_camera_front_outlined,
                color: blueSecondary),
          ),
          IconButton(
            onPressed: () => selectedIndex.value = 4,
            icon: const Icon(Icons.people_outline, color: blueSecondary),
          ),
        ],
      ),
    );
  }
}
