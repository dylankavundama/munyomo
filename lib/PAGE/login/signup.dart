import 'package:flutter/material.dart';
import 'package:newapppolitik/CONFIG/app.dart';
import 'package:newapppolitik/PAGE/login/signin.dart';
import 'package:newapppolitik/WIDGET/textfieldinput.dart';

import '../../CONFIG/color.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 80),
                child: const Text(
                  'Créer un\ncompte',
                  style: TextStyle(color: Colors.black, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            TextFormIputWigdet(
                                username: username,
                                label: 'Matricule',
                                isObscure: false),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormIputWigdet(
                                username: firstname,
                                label: 'Nom de utilisateur',
                                isObscure: false),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormIputWigdet(
                                username: lastname,
                                label: 'Prenom utilisateur',
                                isObscure: false),
                            const SizedBox(
                              height: 40,
                            ),
                            TextFormIputWigdet(
                                username: password,
                                label: 'Mot de passe',
                                isObscure: true),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Enregistrer',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: loginButton,
                                  child: IconButton(
                                      color: Colors.black,
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_forward,
                                      )),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        (MaterialPageRoute(builder: (context) {
                                          return const SignInPage();
                                        })));
                                  },
                                  child: const Text(
                                    'Connectez-vous',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.black,
                                        fontSize: 18),
                                  ),
                                  style: ButtonStyle(),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
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
