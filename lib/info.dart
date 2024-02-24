import 'package:flutter/material.dart';

class info extends StatefulWidget {
  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Color.fromARGB(15, 0, 0, 0),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: const [
                    Text(
                      "Cette application a été developper par les apprenants de la CFPI (Centre de Formation Professionnelle de l'ISIG-GOMA) au programme de la programmation mobile mobule 1",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        "Participants : \n1.PROMESSE DORCAS \n2. DYLAN KAVUNDAMA \n3. MBULUKU KABULENGE DAVID",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        // "Formateurs : \n1. GAETAN ABIO BAMONGOYO\n2. PACIFIQUE BAYONGWA",
                        "Formateur : GAETAN ABIO BAMONGOYOn",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        "Concepteur :PACIFIQUE BAYONGWA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Numéro (WHATSAPP) : \n1. +243817675404\n2. +243998874188",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
