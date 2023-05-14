import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashDetailsBody extends StatelessWidget {
  const DashDetailsBody(
      {super.key,
      required this.size,
      required this.appointments,
      required this.doctors});
  final Size size;
  final double appointments;
  final double doctors;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          child: const Icon(Icons.calendar_month_outlined),
                        ),
                        const Text('All Appointmetns'),
                      ],
                    ),
                    Text(appointments.toString()),
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
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(CupertinoIcons.person),
                        ),
                        const Text('Doctors'),
                      ],
                    ),
                    Text(doctors.toString()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
