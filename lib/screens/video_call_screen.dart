import 'package:doctor_app/widgets/video_call_widgets/vidc_buttons.dart';
import 'package:doctor_app/widgets/video_call_widgets/vidc_caller.dart';
import 'package:flutter/material.dart';

class VideoCallScreen extends StatelessWidget {
  static const routeName = '/video-call-screen';
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          // recenvier
          Positioned.fill(
            child: Image.asset('assets/doctor.jpg', fit: BoxFit.cover),
          ),
          // buttons botton
          VidCButtons(size: size),
          // caller
          VidCCaller(size: size),
        ],
      ),
    );
  }
}
