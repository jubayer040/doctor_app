import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/screens/provider/p_home_screen.dart';
import 'package:doctor_app/screens/provider/p_patients_screen.dart';
import 'package:doctor_app/screens/provider/p_profile_screen.dart';
import 'package:flutter/material.dart';

class PHome extends StatelessWidget {
  static const routeName = '/p-home';
  const PHome({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ValueNotifier<int>(0);
    final pages = [
      const PHomeScreen(),
      const PPatientsScreen(),
      const PProfileScreen(),
    ];
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, val, _) => pages[val],
      ),
      bottomNavigationBar: Container(
        height: kToolbarHeight,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => selectedIndex.value = 0,
              icon: const Icon(Icons.home_outlined, color: bluePrimary),
            ),
            IconButton(
              onPressed: () => selectedIndex.value = 1,
              icon: const Icon(Icons.medical_information_outlined,
                  color: bluePrimary),
            ),
            IconButton(
              onPressed: () => selectedIndex.value = 2,
              icon: const Icon(Icons.location_history, color: bluePrimary),
            ),
          ],
        ),
      ),
    );
  }
}
