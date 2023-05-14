import 'package:doctor_app/widgets/beneficary_widgets/video_call_widgets/vidc_buttons.dart';
import 'package:doctor_app/widgets/beneficary_widgets/video_call_widgets/vidc_receiver.dart';
import 'package:doctor_app/widgets/beneficary_widgets/video_call_widgets/vidc_user.dart';
import 'package:flutter/material.dart';

class VideoCallScreen extends StatelessWidget {
  static const routeName = '/video-call-screen';
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final onVideo = ValueNotifier<bool>(false);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          // recenvier
          VideoCReceiver(onVideo: onVideo),
          // buttons botton
          VidCButtons(size: size, onVideo: onVideo),
          // caller
          VidCUser(size: size, onVideo: onVideo),
        ],
      ),
    );
  }
}
