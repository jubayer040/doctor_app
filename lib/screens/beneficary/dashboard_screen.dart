import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/beneficary_widgets/dashboard_widgets/dash_top_body.dart';
import 'package:doctor_app/widgets/beneficary_widgets/dashboard_widgets/dash_top_container.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  static const routeName = '/dash-board-screen';
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ashhLight,
      appBar: AppBar(
        backgroundColor: ashhLight,
        centerTitle: true,
        leading: getBackButton(context),
        title: const Text('DashBoard', style: TextStyle(color: textColor)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: bluePrimary),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashTopContainer(size: size),
              const SizedBox(height: 10),
              DashTopBody(size: size, doctors: 06, appointments: 18),
              const SizedBox(height: 20),
              const Text(
                'Recent Appointments',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
