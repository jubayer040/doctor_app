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
        child: Image.asset('assets/doctor.jpg', fit: BoxFit.cover),
      );

  Widget _backReceiverImg() => Positioned.fill(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                homeAppBar.withOpacity(.7),
                homeAppBar.withOpacity(.8),
                homeAppBar.withOpacity(.9),
                homeAppBar,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage('assets/user.jpg'),
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
