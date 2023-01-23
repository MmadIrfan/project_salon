import 'dart:html';

import 'package:flutter/material.dart';

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
          )),
    );
  }
}
