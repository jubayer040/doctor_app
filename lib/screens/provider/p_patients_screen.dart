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
            centerTitle: true,
            pinned: true,
            title: const Text(
              "Patients",
              style: TextStyle(color: textColor),
            ),
          ),
          const SliverToBoxAdapter(
            child:
                Padding(padding: EdgeInsets.all(15), child: DocSearchField()),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 5)),
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
