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
        appBar: AppBar(
          backgroundColor: Color(0xfff966be),
          centerTitle: true,
          title: const Text('Pelanggan'),
        ),
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Card(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(10.2),
                      child: TextField(
                          decoration: InputDecoration(
                              labelText: "Pencarian",
                              hintText: "Cari Pelanggan",
                              prefixIcon: Icon(Icons.search),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide:
                                      BorderSide(color: Color(0xfff966be)))))),
                ],
              ),
            ),
            Container(
                child: Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            )),
          ],
        ),
      ),
    );
  }
}
