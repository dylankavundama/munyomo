import 'package:flutter/material.dart';
import 'package:newapppolitik/PAGE/dashboard.dart';
import 'package:newapppolitik/PAGE/fondateur/fondateur.dart';
import 'package:newapppolitik/PAGE/video/listVideo.dart';

import 'package:newapppolitik/info.dart';
import 'package:share/share.dart';

import 'CONFIG/color.dart';
import 'WIDGET/drawercontainer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  List<Widget> screen = [
    const DashboardPage(),
    const ListVideo(),
    const FondateurPage(),
    info(),
  ];
  void _listbotton(int index) {
    currentindex = index;
  }

  @override
  Widget build(BuildContext context) {
        double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text(
          'PATRICK MUNYOMO ',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Share.share(
                  'https://play.google.com/store/apps/details?id=com.newapppolitik');
            },
            icon: const Icon(
              Icons.share,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DrawerContainer(
              screenHeight: screenHeight, screenWidth: screenWidth),
        ),
      ),
      body: Container(),
      bottomSheet: screen[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.red,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 18,
                  color: Colors.white,
                ),
                label: 'Acceuil',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_collection_sharp,
                  size: 18,
                  color: Colors.white,
                ),
                label: 'Videos',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.info_outline_rounded,
                  size: 18,
                  color: Colors.white,
                ),
                label: 'Bioagraphie',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  size: 18,
                  color: Colors.white,
                ),
                label: 'Contact',
                backgroundColor: Colors.white),
          ]),
    );
  }
}
