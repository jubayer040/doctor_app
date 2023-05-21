import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/beneficary_widgets/dashboard_widgets/dash_t_body_item.dart';
import 'package:doctor_app/widgets/beneficary_widgets/dashboard_widgets/dash_top_container.dart';
import 'package:flutter/material.dart';

class PHomeScreen extends StatelessWidget {
  static const routeName = '/p-home-screen';
  const PHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: ashhLight,
        leading: getBackButton(context),
        title: const Text('Home Screen', style: TextStyle(color: bluePrimary)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              DashTopContainer(size: size),
              const SizedBox(height: 15),
              // body card
              Container(
                width: size.width,
                height: 65 * 3.0,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: getHomeGradient(skySecondary),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        DashTBodyItem(
                          count: 1.toString(),
                          icon: Icons.schedule_send_outlined,
                          title: 'Total Appoinments',
                        ),
                        DashTBodyItem(
                          count: 01.toString(),
                          icon: Icons.calendar_today,
                          title: 'Next Schedule',
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        DashTBodyItem(
                          count: 13.toString(),
                          icon: Icons.home_mini,
                          title: 'Your Clients',
                        ),
                        DashTBodyItem(
                          count: 2600.toString(),
                          icon: Icons.money_outlined,
                          title: 'Pay Bills',
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    const DashTBodyItem(
                      count: '${63} %',
                      icon: Icons.nature_people_outlined,
                      title: 'Profile Complete',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
