import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/pengaturan_controller.dart';
import 'gantisandi_view.dart';
import 'profil_view.dart';
import 'package:project_salon/app/modules/login/views/login_view.dart';

class PengaturanView extends GetView<PengaturanController> {
  const PengaturanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 250, 70, 178),
            Color(0xfffc7fc7),
            Color(0xffff96d0),
            Color(0xffffacda),
            Color(0xffffc1e3),
            Color(0xffffd6ec),
            Color(0xffffebf6),
            Color(0xffffffff),
          ],
        )),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Image.asset(
                  "assets/images/Logo.png",
                )),
            backgroundColor: const Color(0xfff966be),
            title: const Text(
              'Wul@n Beauty Salon',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
            elevation: 0.0,
            actions: <Widget>[
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                child: const Text('Karyawan'),
              )
            ],
          ),
          body: Container(
            padding: const EdgeInsets.only(top: 25),
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0, 2),
                colors: <Color>[
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
                topRight: Radius.circular(30.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          "Pengaturan",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: OutlinedButton.icon(
                              label: Text('Profile',
                                  style: TextStyle(color: Colors.black)),
                              icon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProfilView()));
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: OutlinedButton.icon(
                              label: Text('Ganti Kata Sandi',
                                  style: TextStyle(color: Colors.black)),
                              icon: Icon(
                                Icons.key,
                                color: Colors.black,
                              ),
                              style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GantiSandiView()));
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: OutlinedButton.icon(
                              label: Text('Keluar',
                                  style: TextStyle(color: Colors.black)),
                              icon: Icon(
                                Icons.logout,
                                color: Colors.black,
                              ),
                              style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginView()));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Logout Successful')));
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ]),
          ),
        ));
  }
}
