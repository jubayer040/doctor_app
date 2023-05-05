import 'package:flutter/material.dart';

class VidCUser extends StatefulWidget {
  const VidCUser({super.key, required this.onVideo, required this.size});
  final Size size;
  final ValueNotifier onVideo;
  @override
  State<VidCUser> createState() => _VidCUserState();
}

class _VidCUserState extends State<VidCUser> {
  OverlayEntry? entry;
  Offset? offset;

  @override
  void initState() {
    super.initState();
    offset = Offset(widget.size.width * .7, 28);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.onVideo,
      builder: (context, val, _) => val ? _videoUser() : const SizedBox(),
    );
  }

  Positioned _videoUser() => Positioned(
        left: offset!.dx,
        top: offset!.dy,
        width: widget.size.width * .3,
        height: widget.size.height * .18,
        child: GestureDetector(
          onPanUpdate: (details) =>
              setState(() => offset = offset! + details.delta),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: const Color(0xFFBDBDBD)),
              image: const DecorationImage(
                image: AssetImage('assets/user.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
}
