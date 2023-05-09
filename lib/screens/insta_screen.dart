import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_appbar.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item1.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item2.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_info_item3.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_top_container.dart';
import 'package:flutter/material.dart';

class InstaScreen extends StatelessWidget {
  static const routeName = '/insta-screen';
  const InstaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final selectedDate = ValueNotifier<DateTime>(DateTime.now());
    final selectedSlot = ValueNotifier<int>(0);
    final infoItems = [
      const DocDInfoItem1(),
      DocDInfoItem2(selectedDate: selectedDate, selectedSlot: selectedSlot),
      DocDInfoItem3(doctor: doctors[0]),
    ];
    return Scaffold(
      backgroundColor: ashhLight,
      body: DefaultTabController(
        length: infoItems.length,
        child: NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScrolled) => [
            const DocDAppBar(),
            SliverPersistentHeader(
              delegate: MyDelegate(size: size),
              floating: true,
              pinned: true,
            ),
          ],
          body: TabBarView(children: infoItems),
        ),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  const MyDelegate({required this.size});
  final Size size;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: ashhLight,
      child: Column(
        children: [
          DocDTopContainer(doctor: doctors[0]),
          Container(
            height: 55,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(11),
            ),
            child: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              indicatorColor: homePrimaryColor,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.5), color: homeAppBar),
              labelColor: Colors.white,
              tabs: const [
                Tab(text: 'OverView'),
                Tab(text: 'Schedule'),
                Tab(text: 'Reveiws'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => size.height * .384;

  @override
  double get minExtent => size.height * .384;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
