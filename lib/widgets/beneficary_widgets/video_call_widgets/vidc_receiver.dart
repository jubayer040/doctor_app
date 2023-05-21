import 'package:doctor_app/constants/home_const.dart';
import 'package:flutter/material.dart';

class VideoCReceiver extends StatelessWidget {
  const VideoCReceiver({super.key, required this.onVideo});
  final ValueNotifier onVideo;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: onVideo,
      builder: (context, val, _) =>
          val ? _backReceiverVideo() : _backReceiverImg(),
    );
  }

  Widget _backReceiverVideo() => Positioned.fill(
        child: Image.asset('assets/doctor/doc2.png', fit: BoxFit.cover),
      );

  Widget _backReceiverImg() => Positioned.fill(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                blueSecondary.withOpacity(.7),
                blueSecondary.withOpacity(.8),
                blueSecondary.withOpacity(.9),
                blueSecondary,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/doctor/doc2.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Christial Bell',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
}
