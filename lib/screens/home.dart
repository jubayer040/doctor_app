import 'package:doctor_app/screens/home2.dart';
import 'package:doctor_app/screens/provider/p_home_screen.dart';
import 'package:doctor_app/widgets/beneficary_widgets/profile_widgets/profile_item.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const routeName = '/home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileItem(
            icon: Icons.javascript,
            title: 'Beneficary',
            onTap: () {
              Navigator.pushNamed(context, Home2.routeName);
            },
          ),
          ProfileItem(
            icon: Icons.javascript,
            title: 'Provider',
            onTap: () {
              Navigator.pushNamed(context, PHomeScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
