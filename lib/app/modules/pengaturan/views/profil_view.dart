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
          end: Alignment.bottomCenter,
          colors: [
            Colors.pink,
            Colors.white,
          ],
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text('Profile'),
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
                    Text('Name : Muhamad Alfan Abadi',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Text('Status : Owner',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Text('Phone Number : 081254321572',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Text('Branch : Cirebon',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    TextButton(
                      style: ButtonStyle(alignment: Alignment.bottomRight),
                      child: Text(
                        'Setting Profile',
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UbahProfilView()));
                      },
                    )
                  ]),
            )));
  }
}
