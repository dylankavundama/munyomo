import 'package:flutter/material.dart';
import 'package:newapppolitik/PAGE/dashboard.dart';
import 'package:newapppolitik/PAGE/login/signup.dart';

import '../../CONFIG/app.dart';
import '../../CONFIG/color.dart';
import '../../WIDGET/textfieldinput.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController username = TextEditingController();
  TextEditingController passzword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(padding: EdgeInsets.only(top: 130)),
                  //textbutton not run
                  // TextButton(onPressed: onPressed, child: child)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Bienvenu',
                    style: TextStyle(color: Colors.black, fontSize: 33),
                  ),
                  Text(
                    denomination,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    app,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4),
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
                            isObscure: false,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormIputWigdet(
                              username: passzword,
                              label: 'Mot de passe',
                              isObscure: true),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Créer un compte',
                                style: TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: loginButton,
                                child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     (MaterialPageRoute(builder: (context) {
                                    //       return MyRegister();
                                    //     })));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      (MaterialPageRoute(builder: (context) {
                                        return const SignUpPage();
                                      })));
                                },
                                child: const Text(
                                  'Enregistrez vous',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        (MaterialPageRoute(builder: (context) {
                                          return const DashboardPage();
                                        })));
                                  },
                                  child: const Text(
                                    'Sauter',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18,
                                    ),
                                  )),
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
