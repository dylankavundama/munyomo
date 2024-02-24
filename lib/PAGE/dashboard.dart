import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newapppolitik/DetailPost.dart';
import 'package:newapppolitik/PAGE/fondateur/fondateur.dart';

import 'package:newapppolitik/PAGE/showcarousel.dart';
import 'package:newapppolitik/WIDGET/Post.dart';
import 'package:share/share.dart';
import '../CONFIG/color.dart';
import '../JSON/json_fondation.dart';

import '../WIDGET/drawercontainer.dart';
import 'package:http/http.dart' as http;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:newapppolitik/JSON/json_storie.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<dynamic> post = [];
  bool _isLoading = false;

  fetchPosts() async {
    setState(() {
      _isLoading = true;
    });
    const url = 'https://tcnasbl.org/munyomo/Vpost.php';
    // const url = 'http:// 192.168.88.13:8000/allFondateur';
    final uri = Uri.parse(url);
    final reponse = await http.get(uri);
    final List resultat = jsonDecode(reponse.body);
    post = resultat;
    resultat.sort(
      (a, b) => b["id"].compareTo(a["id"]),
    );
    debugPrint(resultat.toString());
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();

    fetchPosts();
    //fetchLocalPHP();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body: _isLoading
          ? const Padding(
              padding: EdgeInsets.all(150.0),
              child: Center(
                  child: CircularProgressIndicator(
                backgroundColor: Colors.black,
                color: Colors.red,
              )),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                        child: CarouselSlider(
                      items: storieList
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ShowCarouselPage(
                                    img: e.photo,
                                  );
                                }));
                              },
                              child: Image.asset(
                                e.photo,
                                height: screenHeight * 0.38,
                                width: screenWidth,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(autoPlay: true),
                    )),
                    SizedBox(height: screenHeight * 0.02),
                    const Text('___ SHIDA YAKO NI YANGU',
                        style: TextStyle(fontSize: 18)),
                    SizedBox(height: screenHeight * 0.02),
                    Column(
                        children: List.generate(
                      fondateurList.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const FondateurPage();
                          }));
                        },
                        child: Container(
                            // height: screenHeight * 0.2,
                            width: screenWidth,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                            child:
                                LayoutBuilder(builder: (context, constraints) {
                              return Padding(
                                padding: const EdgeInsets.all(18),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "L'Honorable PATRICK est né à Bukavu dans les années 50, Partisant de la paix et de la sécurité, il est élu pour representer la population du Nork-Kivu",
                                      textAlign: TextAlign.justify,
                                      maxLines: 4,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Text(
                                      '... Lire plus',
                                      textAlign: TextAlign.justify,
                                      maxLines: 4,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            })),
                      ),
                    )),
                    SizedBox(height: screenHeight * 0.02),
                    const Text('___ Les Actions',
                        style: TextStyle(fontSize: 18)),
                    SizedBox(height: screenHeight * 0.02),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          post.length,
                          (index) => GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailPost(
                                  cat: post[index]['PostTitle'],
                                  date: post[index]['PostingDate'],
                                  img: post[index]['PostImage'],
                                  titre: post[index]['PostDetails'],
                                );
                              }));
                            },
                            child: PostWidget(
                              screenW: screenWidth,
                              screenH: screenHeight,
                              categories: post[index]['PostTitle'],
                              date: post[index]['PostingDate'],
                              description: post[index]['PostDetails'],
                              index: index + 1,
                              text: '',
                              vues: "34k",
                              image: post[index]['PostImage'],
                            ),
                          ),
                        ),
                        // [
                        //   PostWidget(
                        //     screenW: screenW,
                        //     screenH: screenH,
                        //     categories: "PLAIDOIRIE",
                        //     commentaires: "10",
                        //     date: "22/05/2023",
                        //     description:
                        //         "Le député national Patrick Munyomo a été reçu,  Jean-Michel Sama Lukonde, dans son cabinet de travail à Kinshasa, capitale de la République démocratique du Congo.",
                        //     image: "assets/asset/pat2.jpg",
                        //     index: 1,
                        //     text: "",
                        //     vues: "34k",
                        //   ),
                        //   PostWidget(
                        //     screenW: screenW,
                        //     screenH: screenH,
                        //     categories: "POLITIQUE",
                        //     commentaires: "10",
                        //     date: "22/05/2023",
                        //     description:
                        //         "Le député national Patrick Munyomo a été reçu, le jeudi 26 mai 2022, par le premier ministre, Jean-Michel Sama Lukonde, dans son cabinet de travail à Kinshasa, capitale de la République démocratique du Congo.",
                        //     image: "assets/asset/pat3.jpg",
                        //     index: 2,
                        //     text: "",
                        //     vues: "34k",
                        //   ),
                        // ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
