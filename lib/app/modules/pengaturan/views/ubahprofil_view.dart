import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_salon/app/modules/pengaturan/views/profil_view.dart';

import '../controllers/ubahprofil_controller.dart';

import 'package:get/get.dart';

class UbahProfilView extends GetView<UbahProfilController> {
  const UbahProfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.pink,
            Colors.white,
          ],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Setting Profile'),
            centerTitle: true,
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            height: 400,
            width: 1400,
            color: Colors.white,
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Name : ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Text('Phone Number : ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Text('Branch : ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                TextButton(
                  style: ButtonStyle(alignment: Alignment.bottomRight),
                  child: Text(
                    'Setting',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilView()));
                  },
                )
              ],
            ),
          ),
        ));
  }
}
