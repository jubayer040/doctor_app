import 'package:doctor_app/models/doctor.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/models/category.dart';

const ashhLight = Color(0xFFECF6FF);

const bluePrimary = Color(0xFF01204E);
const blueSecondary = Color(0xFF0E4D7B);
const skyPrimary = Color(0xFF30BCED);
const skySecondary = Color(0xFFBDDDFC);
const textColor = Color(0xFF2D2C2D);
const textSecondary = Color(0xFFF9F9F9);

const bodyGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Colors.white, Colors.white, Color(0xB3FFFFFF), Color(0x62FFFFFF)],
);

final bodyShadow = [
  BoxShadow(
    color: const Color(0xFF3F6080).withOpacity(.4),
    blurRadius: 32,
    offset: const Offset(10, 5),
  ),
  BoxShadow(
    color: const Color(0xFFFFFFFF).withOpacity(1),
    blurRadius: 32,
    offset: const Offset(-10, -5),
  ),
];

final categories = [
  const Category(
      img: 'assets/category/category_selected.png', title: 'Cardiology'),
  const Category(img: 'assets/category/category.png', title: 'Dentist'),
  const Category(img: 'assets/category/category.png', title: 'Dermathology'),
  const Category(img: 'assets/category/category.png', title: 'Neurology'),
  const Category(img: 'assets/category/category.png', title: 'Nutrition'),
  const Category(img: 'assets/category/category.png', title: 'Psychology'),
  const Category(img: 'assets/category/category.png', title: 'Pulmonary'),
  const Category(img: 'assets/category/category.png', title: 'Urology'),
];

const doctors = [
  Doctor(
    title: 'Prof. Dr. Kevin Williams',
    subtitle: 'Heart Sergon',
    img: 'assets/doctor/doc1.png',
    location: 'Mirpur-Dhaka',
    schedule: '10.00 am - 3.20pm',
    fees: 550,
    review: 3,
  ),
  Doctor(
    title: 'Prof. Dr. Saif Rahman',
    subtitle: 'Heart Sergon',
    img: 'assets/doctor/doc2.png',
    location: 'Mirpur-Dhaka',
    schedule: '10.00 am - 3.20pm',
    fees: 550,
    review: 3,
  ),
  Doctor(
    title: 'Dr. Shariful Islam',
    subtitle: 'Heart Sergon',
    img: 'assets/doctor/doc3.png',
    location: 'Mirpur-Dhaka',
    schedule: '10.00 am - 3.20pm',
    fees: 550,
    review: 3,
  ),
  Doctor(
    title: 'Prof. Dr. Jb Jason',
    subtitle: 'Heart Sergon',
    img: 'assets/doctor/doc4.png',
    location: 'Mirpur-Dhaka',
    schedule: '10.00 am - 3.20pm',
    fees: 550,
    review: 3,
  ),
  Doctor(
    title: 'Dr. Tarikul Islam',
    subtitle: 'Heart Sergon',
    img: 'assets/doctor/doc5.png',
    location: 'Mirpur-Dhaka',
    schedule: '10.00 am - 3.20pm',
    fees: 550,
    review: 3,
  ),
];
