import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key? key,
    required this.screenH,
    required this.screenW,
    required this.img,

  }) : super(key: key);

  final double screenH;
  final double screenW;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: screenH * 0.2,
        width: screenW * 0.25,
        margin: const EdgeInsets.only(right: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: Colors.red.shade200, style: BorderStyle.solid, width: 3),
        ),
        child: Image.asset(
          img,
          fit: BoxFit.cover,
          height: screenH * 0.2,
          width: screenW * 0.25,
        ),
      ),
    );
  }
}
