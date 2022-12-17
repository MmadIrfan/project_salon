import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pelanggan_controller.dart';

class PelangganView extends GetView<PelangganController> {
  const PelangganView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0, 2),
          colors: <Color>[
            Color(0xfff966be),
            Color(0xfffc7fc7),
            Color(0xffff96d0),
            Color(0xffffacda),
            Color(0xffffc1e3),
            Color(0xffffd6ec),
            Color(0xffffebf6),
            Color(0xffffffff),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
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
