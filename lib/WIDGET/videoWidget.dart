import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostVideoWidget extends StatelessWidget {
  const PostVideoWidget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.image,
    required this.description,
    required this.text,
    required this.date,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String image;
  final String description;
  final String text;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: screenHeight * 0.25,
                  width: screenWidth,
                ),
                Positioned(
                    top: screenHeight * 0.1,
                    width: screenWidth / 1,
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      child: Center(
                        child: FaIcon(FontAwesomeIcons.play),
                      ),
                    ))
              ],
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: screenHeight * 0.1,
              width: screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          text,
                          maxLines: 3,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const FaIcon(
                                    FontAwesomeIcons.eye)),
                            IconButton(
                                onPressed: () {
                               
                                },
                                icon: const FaIcon(
                                    FontAwesomeIcons.shareFromSquare)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
