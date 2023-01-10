import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pengaturan_controller.dart';

import 'profil_view.dart';

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
            Colors.pink,
            Colors.white,
          ],
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: Image.asset('assets/images/Logo.png'),
              title: const Text('Pengaturan'),
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
                  },
                  child: const Text('Profil'),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Ganti Kata Sandi')));
                    },
                    child: const Text('Ganti Kata Sandi')),
                const SizedBox(height: 20),
                OutlinedButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Logout')));
                    },
                    child: const Text('Logout'))
              ],
            ))));
  }
}
