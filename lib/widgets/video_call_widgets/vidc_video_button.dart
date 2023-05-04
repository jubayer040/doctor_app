import 'package:doctor_app/constants/home_const2.dart';
import 'package:flutter/material.dart';

class VidCVideoButton extends StatefulWidget {
  const VidCVideoButton({super.key});

  @override
  State<VidCVideoButton> createState() => _VidCVideoButtonState();
}

class _VidCVideoButtonState extends State<VidCVideoButton> {
  bool onVideo = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => onVideo = !onVideo),
      child: getVideoIcon(
          onVideo ? Icons.videocam_outlined : Icons.videocam_off_outlined),
    );
  }
}
