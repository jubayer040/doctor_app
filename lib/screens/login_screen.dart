import 'package:doctor_app/screens/home.dart';
import 'package:doctor_app/screens/p_home.dart';
import 'package:doctor_app/widgets/beneficary_widgets/profile_widgets/profile_item.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/logn-screen';
  const LoginScreen({super.key});

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
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          ProfileItem(
            icon: Icons.javascript,
            title: 'Provider',
            onTap: () {
              Navigator.pushNamed(context, PHome.routeName);
            },
          ),
        ],
      ),
    );
  }
}
