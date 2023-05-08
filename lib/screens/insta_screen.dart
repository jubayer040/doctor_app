import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_appbar.dart';
import 'package:doctor_app/widgets/doc_details_widgets/docd_top_container.dart';
import 'package:flutter/material.dart';

class InstaScreen extends StatelessWidget {
  static const routeName = '/insta-screen';
  const InstaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) => [
          const DocDAppBar(),
          SliverPersistentHeader(delegate: MyDelegate(size: size)),
        ],
        body: Container(),
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
    return DocDTopContainer(doctor: doctors[0]);
  }

  @override
  double get maxExtent => size.height * .3;

  @override
  double get minExtent => size.height * .3;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
