import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/tambahproduk.controller.dart';

class TambahprodukScreen extends GetView<TambahprodukController> {
  const TambahprodukScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TambahprodukScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TambahprodukScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
