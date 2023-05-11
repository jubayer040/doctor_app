import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  static const routeName = '/dash-board-screen';
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ashhLight,
      appBar: AppBar(
        backgroundColor: ashhLight,
        centerTitle: true,
        title: const Text(
          'DashBoard',
          style: TextStyle(color: homeTextColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: homeAppBar),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashTopContainer(size: size),
              const SizedBox(height: 10),
              Container(
                height: size.height * .08,
                width: size.width,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: getHomeGradient(homePrimaryColor),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: getHomeGradient(Colors.white),
                        ),
                        child: FittedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: const Icon(
                                        Icons.calendar_month_outlined),
                                  ),
                                  const Text('All Appointmetns'),
                                ],
                              ),
                              const Text('04'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 10,
                        margin: const EdgeInsets.only(left: 5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: getHomeGradient(Colors.white),
                        ),
                        child: FittedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: const Icon(CupertinoIcons.person),
                                  ),
                                  const Text('Doctors'),
                                ],
                              ),
                              const Text('04'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Recent Appointments',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashTopContainer extends StatelessWidget {
  const DashTopContainer({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .12,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: getHomeGradient(homePrimaryColor),
        boxShadow: bodyShadow,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hello Jason!',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 1.3,
                    wordSpacing: 1.3,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome to our Health dashboard',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    letterSpacing: 1.3,
                    wordSpacing: 1.3,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/dash_img.png',
              width: size.width * .25,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
