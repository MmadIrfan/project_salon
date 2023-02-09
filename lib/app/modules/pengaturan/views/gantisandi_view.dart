import 'package:flutter/material.dart';
import 'package:project_salon/app/modules/pengaturan/views/pengaturan_view.dart';

import '../controllers/gantisandi_controller.dart';

import 'package:get/get.dart';

TextEditingController newpasswordController = TextEditingController();
TextEditingController oldpasswordController = TextEditingController();

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
                    Text('Password lama : ',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    _inputField("password lama", oldpasswordController),
                    Text('Password baru : ',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    _inputField("password baru", newpasswordController),
                    TextButton(
                      style: ButtonStyle(alignment: Alignment.bottomRight),
                      child: Text(
                        'Agree',
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PengaturanView()));
                      },
                    )
                  ]),
            )));
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.black));

    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }
}
