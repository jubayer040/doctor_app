import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/widgets/common_widgets/doc_search_field.dart';
import 'package:doctor_app/widgets/beneficary_widgets/doc_widgets/doc_filter_icon.dart';
import 'package:doctor_app/widgets/beneficary_widgets/home_widgets/home_doctor_list.dart';
import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  static const routeName = '/doctors-screen';
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: kToolbarHeight,
            backgroundColor: ashhLight,
            centerTitle: true,
            elevation: 10,
            pinned: true,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new, color: bluePrimary),
            ),
            title: const Text(
              'Our Providers',
              style: TextStyle(color: bluePrimary),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: const [
                  Expanded(child: DocSearchField()),
                  DocFilterIcon(),
                ],
              ),
            ),
          ),
          const HomeDoctorList(),
        ],
      ),
    );
  }
}
