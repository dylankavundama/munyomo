import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:http/http.dart' as http;
import 'package:newapppolitik/PAGE/message/commentaire.dart';
import 'package:newapppolitik/WIDGET/Post.dart';
import 'package:newapppolitik/home.dart';
import 'package:share/share.dart';

class DetailPost extends StatefulWidget {
  DetailPost(
      {required this.img,
      required this.titre,
      required this.date,
      required this.cat,
      Key? key})
      : super(key: key);

  final String img;
  final String titre;
  final String date;
  final String cat;

  @override
  State<DetailPost> createState() => _DetailPostState();
}

class _DetailPostState extends State<DetailPost> {
  int like = 45;
  IconData icon = FontAwesomeIcons.heart;
  late Color color;
  var iconButton = const FaIcon(FontAwesomeIcons.heart);
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
    final resultat = jsonDecode(reponse.body);
    post = resultat;
    debugPrint(reponse.body);
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
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: ScreenHeight * 0.5,
                  width: ScreenWidth,
                  child: Image.network(
                    'https://tcnasbl.org/munyomo/postimages/${widget.img}',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 8,
                  right: 8,
                  top: 18,
                  bottom: 16,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_left_outlined,
                              color: Colors.red,
                              size: 25,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Share.share(
                                        'https://play.google.com/store/apps/details?id=com.newapppolitik');
                                  },
                                  child: const Icon(
                                    Icons.share,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ScreenHeight * 0.2,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  // bottom: 10,
                  left: 8,
                  right: ScreenWidth * 0.7,
                  top: ScreenHeight * 0.35,
                  child: Container(
                    height: ScreenHeight * 0.04,
                    width: ScreenWidth * 0.05,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        '${widget.cat}',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenHeight * 0.4,
                  left: 8,
                  right: 10,
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      '${widget.titre}',
                      maxLines: 3,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenHeight * 0.03,
            ),
            Container(
              height: ScreenHeight * 0.06,
              width: ScreenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'CFPI-ADMIN',
                            style: TextStyle(color: Colors.black, fontSize: 11),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '${widget.date}',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              iconButton = const FaIcon(
                                FontAwesomeIcons.heart,
                                color: Colors.red,
                              );
                              like++;
                            });
                          },
                          icon: iconButton),
                      Text('${like}'),
                      const SizedBox(width: 5),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.message),
                      ),
                      Text(''),
                      const SizedBox(width: 13),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              color: Colors.black45,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.titre}',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    height: ScreenHeight * 0.04,
                    width: ScreenWidth * 0.4,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'AUTRE POST',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
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
                                  screenW: ScreenWidth,
                                  screenH: ScreenHeight,
                                  categories: post[index]['PostTitle'],
                                  date: post[index]['PostingDate'],
                                  description: post[index]['PostDetails'],
                                  index: index + 1,
                                  text: '',
                                  vues: "34k",
                                  image: post[index]['PostImage'],
                                ),
                              )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
