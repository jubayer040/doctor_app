import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/common_widgets/doc_search_field.dart';
import 'package:doctor_app/widgets/provider_widgets/p_patient_widgts/p_patient_item.dart';
import 'package:flutter/material.dart';

class PPatientsScreen extends StatelessWidget {
  static const routeName = '/p-patients-screen';
  const PPatientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 10,
            backgroundColor: ashhLight,
            leading: getBackButton(context),
            pinned: true,
            title: const Text(
              "Patients",
              style: TextStyle(color: homeTextColor),
            ),
          ),
          const SliverToBoxAdapter(
            child:
                Padding(padding: EdgeInsets.all(15), child: DocSearchField()),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const PPatientItem(),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
