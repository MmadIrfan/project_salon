import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pelanggan_controller.dart';

class PelangganView extends GetView<PelangganController> {
  const PelangganView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _data(),
      ),
    );
  }

    Widget _data() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
        ),
      ),
    );
   }
}
