import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/screens/provider/p_patients_screen.dart';
import 'package:doctor_app/screens/provider/p_profile_screen.dart';
import 'package:flutter/material.dart';

class PHomeScreen extends StatelessWidget {
  static const routeName = '/p-home-screen';
  const PHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: getBackButton(context),
        title: const Text('Home Screen'),
      ),
      body: const Center(child: Text('Providers Home Screen')),
      bottomNavigationBar: Container(
        height: kToolbarHeight,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, PHomeScreen.routeName);
              },
              icon: const Icon(Icons.home_outlined, color: homeSecondary),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, PProfileScreen.routeName);
              },
              icon: const Icon(Icons.medical_information_outlined,
                  color: homeSecondary),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, PPatientsScreen.routeName);
              },
              icon: const Icon(Icons.pattern_outlined, color: homeSecondary),
            ),
            // IconButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, DoctorsScreen.routeName);
            //   },
            //   icon: const Icon(Icons.share, color: homeSecondary),
            // ),
            // IconButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, ProfileScreen.routeName);
            //   },
            //   icon: const Icon(Icons.people_outline, color: homeSecondary),
            // ),
            // IconButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, DashBoardScreen.routeName);
            //   },
            //   icon: const Icon(Icons.dashboard_outlined, color: homeSecondary),
            // ),
          ],
        ),
      ),
    );
  }
}
