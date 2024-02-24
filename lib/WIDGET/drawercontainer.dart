import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newapppolitik/PAGE/video/listVideo.dart';

import '../PAGE/fondateur/fondateur.dart';
import '../contact.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: constraints.minHeight * 0.06,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 25,
                      child: Center(
                          child: FaIcon(
                        FontAwesomeIcons.laughBeam,
                        color: Colors.white,
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "FONDATION\nPATRICK MUNYOMO",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Divider(),
              SizedBox(
                // height: screenHeight * 0.03,
                height: constraints.minHeight * 0.04,
              ),
              ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const FondateurPage();
                    }));
                  },
                  leading: const FaIcon(FontAwesomeIcons.bars),
                  title: const Text('BIOGRAPHIE')),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ListVideo();
                  }));
                },
                leading: const FaIcon(FontAwesomeIcons.play),
                title: const Text('VIDEO'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ContactPage();
                  }));
                },
                leading: const FaIcon(FontAwesomeIcons.contactCard),
                title: const Text('CONTACT US'),
              ),
              ListTile(
                  onTap: () => exit(0),
                  leading: const Icon(
                    Icons.logout,
                  ),
                  title: const Text('QUITTER')),
            ]);
      },
    );
  }
}
