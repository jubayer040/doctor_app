import 'package:doctor_app/constants/home_const2.dart';
import 'package:doctor_app/widgets/home_widgets/home_appbar.dart';
import 'package:doctor_app/widgets/home_widgets/home_body.dart';
import 'package:doctor_app/widgets/home_widgets/home_category_grid.dart';
import 'package:doctor_app/widgets/home_widgets/home_doctor_list.dart';
import 'package:doctor_app/widgets/home_widgets/home_navbar.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/soo-home';
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ashhLight,
      body: CustomScrollView(
        slivers: [
          const HomeAppbar(),
          const HomeBody(),
          const HomeCategoryGrid(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: getTitleSeeAllText('TOP DOCTOR', () {}),
            ),
          ),
          const HomeDoctorList(),
        ],
      ),
      bottomNavigationBar: const HomeNavBar(),
    );
  }
}
