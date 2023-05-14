import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/profile_widgets/profile_item.dart';
import 'package:doctor_app/widgets/profile_widgets/profile_top_body.dart';
import 'package:flutter/material.dart';

class PProfileScreen extends StatelessWidget {
  static const routeName = '/p-profile-screen';
  const PProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        backgroundColor: ashhLight,
        leading: getBackButton(context),
        title: const Text('User Profile', style: TextStyle(color: homeAppBar)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // img circle
              const PofileTopBody(img: 'assets/logo1.png'),
              ProfileItem(
                icon: Icons.person_outlined,
                onTap: () {},
                title: 'Profile Settings',
              ),
              ProfileItem(
                icon: Icons.calendar_month_outlined,
                onTap: () {},
                title: 'Appointments',
              ),
              ProfileItem(
                icon: Icons.person_add_alt_1_outlined,
                onTap: () {},
                title: 'Patients',
              ),
              ProfileItem(
                icon: Icons.local_hospital_outlined,
                onTap: () {},
                title: 'Clinics',
              ),
              ProfileItem(
                icon: Icons.schedule_outlined,
                onTap: () {},
                title: 'Schedule',
              ),
              ProfileItem(
                icon: Icons.add_chart_outlined,
                onTap: () {},
                title: 'Billing Details',
              ),
              ProfileItem(
                icon: Icons.lock_outline,
                onTap: () {},
                title: 'Password Change',
              ),
              ProfileItem(
                icon: Icons.notifications_outlined,
                onTap: () {},
                title: 'Notifications',
              ),
              ProfileItem(
                icon: Icons.logout_rounded,
                onTap: () {},
                title: 'LogOut',
              ),
              ProfileItem(
                icon: Icons.delete_sweep_outlined,
                onTap: () {},
                title: 'Delete Account',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
