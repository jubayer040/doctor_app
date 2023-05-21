import 'dart:math';
import 'package:doctor_app/constants/home_const.dart';
import 'package:flutter/material.dart';

Color randomColor() => Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));

Gradient getHomeGradient(Color color) => LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        color.withOpacity(.9),
        color.withOpacity(.6),
        color.withOpacity(.4)
      ],
    );

Container getVideoIcon(IconData icon) => Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(10),
      //alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white24,
      ),
      child: Icon(icon, color: Colors.white),
    );

Widget getDoctorCategory(String title) => Container(
      padding: const EdgeInsets.only(left: 7, top: 3, bottom: 3, right: 14),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: const BoxDecoration(
        color: blueSecondary,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(4),
          right: Radius.circular(14),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 9, color: Colors.white),
      ),
    );

Widget getTitleText(String title, Color color) => Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold, color: color),
    );

Widget getSubTitleText(String title, Color color) => Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 9.5, color: color),
    );

Widget getTitleSeeAllText(String title, Function onTap) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: blueSecondary,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () => onTap,
          child: const Text(
            'See More',
            style: TextStyle(
              color: Colors.cyan,
              fontWeight: FontWeight.w300,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );

Container getButtonStyle(Widget child) => Container(
      height: kBottomNavigationBarHeight,
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        gradient: getHomeGradient(skySecondary),
        boxShadow: bodyShadow,
      ),
      child: child,
    );

AppBar getAppbar(BuildContext context, String title, List<Widget> action) =>
    AppBar(
      centerTitle: true,
      elevation: 10,
      backgroundColor: ashhLight,
      leading: getBackButton(context),
      title: const Text('User Profile', style: TextStyle(color: bluePrimary)),
      actions: action,
    );

IconButton getBackButton(BuildContext context) => IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back_ios_new, color: blueSecondary),
    );
