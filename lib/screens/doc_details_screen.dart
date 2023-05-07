import 'package:doctor_app/constants/home_const2.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_appbar.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_category.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item1.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item2.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item4.dart';
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
      const Text('Clinic & Fees'),
      DocDInfoItem2(selectedDate: selectedDate, selectedSlot: selectedSlot),
      DocDInfoItem4(doctor: doctor),
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
            child: ValueListenableBuilder(
              valueListenable: selectedCategory,
              builder: (context, index, _) => Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25.0),
                child: infoItems[index],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: kBottomNavigationBarHeight,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: getHomeGradient(const Color(0xFF80DDEA)),
          boxShadow: bodyShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Fee:  \$${doctor.fees}'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white54,
              ),
              child: const Text(
                'Appointment',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
