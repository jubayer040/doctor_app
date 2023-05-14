import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:doctor_app/widgets/common_widgets/doc_search_field.dart';
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
            title: const Text("Patients"),
          ),
          const SliverToBoxAdapter(child: DocSearchField()),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(),
            ),
          ),
        ],
      ),
    );
  }
}
