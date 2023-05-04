import 'package:flutter/material.dart';

class VidCCaller extends StatefulWidget {
  const VidCCaller({super.key, required this.size});
  final Size size;
  @override
  State<VidCCaller> createState() => _VidCCallerState();
}

class _VidCCallerState extends State<VidCCaller> {
  OverlayEntry? entry;
  Offset? offset;

  @override
  void initState() {
    super.initState();
    offset = Offset(widget.size.width * .7, 28);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
}
