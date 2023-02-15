import 'package:flutter/material.dart';
import 'package:project_salon/app/modules/pengaturan/views/ubahprofil_view.dart';

import '../controllers/profil_controller.dart';

import 'package:get/get.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0, 2),
          colors: <Color>[
            Color.fromARGB(255, 250, 70, 178),
            Color(0xfffc7fc7),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffffffff),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color(0xfff966be),
          title: const Text('Wul@n Beauty Salon'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: 600,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(0, 2),
                      colors: <Color>[
                        Color(0xfff966be),
                        Color(0xfffc7fc7),
                        Color(0xffff96d0),
                        Color(0xffffd6ec),
                        Color(0xffffebf6),
                        Color(0xffffffff),
                      ],
                      tileMode: TileMode.mirror,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(
                        30.0,
                      ),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  "Profile",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 542,
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                                width: 100,
                              ),
                            ),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Name : Muhamad Alfan Abadi',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                  Text('Status : Owner',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                  Text('Phone Number : 081254321572',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                  Text('Branch : Cirebon',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                  TextButton(
                                    style: ButtonStyle(
                                        alignment: Alignment.bottomRight),
                                    child: Text(
                                      'Setting Profile',
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const UbahProfilView()));
                                    },
                                  )
                                ]),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
