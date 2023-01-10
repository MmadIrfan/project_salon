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
            leading: Image.asset('assets/images/Logo.png'),
            title: const Text('Profil'),
            centerTitle: true,
          ),
          body: Container(
              margin: EdgeInsets.all(20),
              height: 200,
              width: 200,
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: Text(
                'Nama : ',
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
        ));
  }
}
