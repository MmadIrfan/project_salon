import 'dart:html';

import 'package:flutter/material.dart';

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
          end: Alignment.bottomCenter,
          colors: [
            Colors.pink,
            Colors.white,
          ],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Profil'),
            centerTitle: true,
          ),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Nama :'),
              const Text('Status :'),
              const Text('No Hp :'),
              const Text('Cabang:'),
            ]),
          ),
        ));
  }
}
