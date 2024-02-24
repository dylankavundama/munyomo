import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../JSON/json_post.dart';
import '../../MODEL/post.dart';

class CommentaireStatus extends StatefulWidget {
  CommentaireStatus({required this.id, Key? key}) : super(key: key);
  final int id;

  @override
  State<CommentaireStatus> createState() => _CommentaireStatusState();
}

class _CommentaireStatusState extends State<CommentaireStatus> {
  List<Commentaire> comment = [];
  fectCategorie() {
    comment =
        commentaires.where((element) => element.post == widget.id).toList();
  }

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    fectCategorie();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
            Padding(
              padding: const EdgeInsets.all(12),
              child: OtherPhoto(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OtherPhoto extends StatelessWidget {
  OtherPhoto({required this.screenWidth, required this.screenHeight, Key? key})
      : super(key: key);
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Center(
                    child: Icon(Icons.person_add),
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  'Gaetan ABIO',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: TextFormField(
                maxLines: 25,
                decoration: const InputDecoration(
                    hintText: 'Entrez le commentaire .....', border: OutlineInputBorder()),
              ),
            )
          ],
        ));
  }
}
