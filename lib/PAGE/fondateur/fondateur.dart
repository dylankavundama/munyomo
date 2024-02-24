import 'package:flutter/material.dart';
import 'package:newapppolitik/MODEL/fondateur.dart';

import '../../JSON/json_fondation.dart';

class FondateurPage extends StatefulWidget {
  const FondateurPage({Key? key}) : super(key: key);

  @override
  State<FondateurPage> createState() => _FondateurPageState();
}

class _FondateurPageState extends State<FondateurPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: fondateurList
                .map((e) => Column(
                      children: [
                        SizedBox(height: screenHeight * 0.02),
                        Image.asset(
                          e.photo,
                          width: screenWidth,
                          height: screenHeight * 0.4,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 15,
                                    child: Center(
                                      child: Text('+'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      'Description',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, top: 2),
                                child: Text(
                                  e.description,
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ],
                          ),
                        ),
                        information(e.idFondateur)
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget information(int id) {
    List<Description> description = [];
    bool isVisible = true;

    setState(() {
      description = descriptionList
          .where((element) => element.idFondation == id)
          .toList();
    });

    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: description
            .map((e) => Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = true;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(color: Colors.grey),
                            width: screenWidth,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 15,
                                    child: Center(
                                      child: Text('${e.idDescription}'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      e.title,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          descriptionWidget(e.idDescription),
                        ],
                      ),
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }

  Widget descriptionWidget(int id) {
    List<DecriptionDescription> desc = [];
    bool isVisible = true;

    setState(() {
      desc = descList.where((element) => element.idDescription == id).toList();
    });
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: desc
            .map((e) => Padding(
              padding: const EdgeInsets.all(2),
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text(e.title,
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold))),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(e.description),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
            ))
            .toList());
  }
}
