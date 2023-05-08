import 'package:doctor_app/widgets/doc_details_widgets/docd_appbar.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_category_body.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_category.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item1.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item2.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item3.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_navbar.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_top_container.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constants/home_const.dart';

class DocDetailsScreen extends StatelessWidget {
  static const routeName = '/soow-description';
  const DocDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final doctor = doctors[0];
    final selectedCategory = ValueNotifier<int>(0);
    final selectedDate = ValueNotifier<DateTime>(DateTime.now());
    final selectedSlot = ValueNotifier<int>(0);
    final infoItems = [
      const DocDInfoItem1(),
      DocDInfoItem2(selectedDate: selectedDate, selectedSlot: selectedSlot),
      DocDInfoItem3(doctor: doctor),
    ];

    return Scaffold(
      backgroundColor: ashhLight,
      body: CustomScrollView(
        slivers: [
          // appBar
          const DocDAppBar(),
          // body
          DocDTopContainer(doctor: doctor),
          // doc-infoList-category
          SliverToBoxAdapter(
              child: DocDInfoCategory(selectedCategory: selectedCategory)),
          // doc-infoList-body
          SliverToBoxAdapter(
            child: DocdCategoryBody(
                selectedCategory: selectedCategory, infoItems: infoItems),
          ),
        ],
      ),
      bottomNavigationBar: DocdNavBar(doctor: doctor),
    );
  }
}
