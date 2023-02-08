import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pengaturan_controller.dart';

import 'gantisandi_view.dart';
import 'profil_view.dart';
import 'ubahprofil_view.dart';

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
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: Image.asset('assets/images/Logo.png'),
              title: const Text('Setting'),
              backgroundColor: Color(0xfff966be),
              centerTitle: true,
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.green)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilView()));
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text('Profile')));
                  },
                  child: const Text('Profile'),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GantiSandiView()));
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Change Password')));
                    },
                    child: const Text('Change Password')),
                const SizedBox(height: 20),
                OutlinedButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginView()));
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Logout Successful')));
                    },
                    child: const Text('Logout'))
              ],
            ))));
  }
}
