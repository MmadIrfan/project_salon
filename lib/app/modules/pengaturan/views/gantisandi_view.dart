import 'dart:html';

import 'package:flutter/material.dart';

import '../controllers/gantisandi_controller.dart';

import 'package:get/get.dart';

class GantiSandiView extends GetView<GantiSandiController> {
  const GantiSandiView({Key? key}) : super(key: key);

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
              title: const Text('Change Password'),
              centerTitle: true,
            ),
            body: Container(
              margin: EdgeInsets.all(20),
              height: 400,
              width: 1400,
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Old Password : ',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Text('New Password : ',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    TextButton(
                      style: ButtonStyle(alignment: Alignment.bottomRight),
                      child: Text(
                        'Agree',
                      ),
                      onPressed: () {},
                    )
                  ]),
            )));
  }
}
