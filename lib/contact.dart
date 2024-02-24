import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Cette application a été conçue par les apprenants de la CFPI (Centre de Formation Professionnelle de l'ISIG) au programme de la programmation mobile mobule 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Participants : \n1. MBONYIMBUSA PROMESSE DORCAS\n2. DYLAN KAVUNDAMA \n3. MBULUKU KABULENGE DAVID",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
               // "Formateurs : \n1. GAETAN ABIO BAMONGOYO\n2. PACIFIQUE BAYONGWA",
                "Formateurs : GAETAN ABIO BAMONGOYO",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),

            
            ),
                    Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Concepteur :PACIFIQUE BAYONGWA",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
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
    );
  }
}
