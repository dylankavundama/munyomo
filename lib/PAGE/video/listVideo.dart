import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:newapppolitik/PAGE/video/youtube.dart';
import 'package:newapppolitik/WIDGET/shimmer.dart';

import 'video.dart';
import 'package:http/http.dart' as http;

class ListVideo extends StatefulWidget {
  const ListVideo({Key? key}) : super(key: key);

  @override
  State<ListVideo> createState() => _ListVideoState();
}

class _ListVideoState extends State<ListVideo> {
  List<dynamic> video = [];
  bool _isLoading = false;

  fetchvideos() async {
    setState(() {
      _isLoading = true;
    });
    const url = 'https://tcnasbl.org/munyomo/Vvideo.php';
    final uri = Uri.parse(url);
    final reponse = await http.get(uri);
   final List resultat = jsonDecode(reponse.body);
    video = resultat;
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
    fetchvideos();
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(
        
        title: Text('Videos'),
        centerTitle: true,
        backgroundColor: Colors.red,),
      body: _isLoading
          ? Center(
              child: Column(
                            children:
                                List.generate(4, (index) => postShimmer()),
                          ),
            )
          : SingleChildScrollView(
              child: Column(
                children: List.generate(
                  video.length,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Youtube(videos: video[index]['PostDetails']),
                        ),
                      );
                    },
                    child: PostVideoWidget(
                      screenHeight: screenH,
                      screenWidth: screenW,
                      image: "https://tcnasbl.org/munyomo/postimages/" +
                          video[index]['PostImage'],
                      titre: video[index]['PostTitle'],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}


