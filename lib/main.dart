import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/routes.dart';
import 'package:doctor_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: ashhLight,
        ),
        onGenerateRoute: Routes.onGenerateRoute,
        initialRoute: Home.routeName,
      ),
    );
  }
}
