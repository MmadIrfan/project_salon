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
          leading: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Image.asset("assets/images/logo.png")),
          backgroundColor: Color(0xfff966be),
          title: const Text(
            'Wul@n Beauty Salon',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(
                        8.0) //                 <--- border radius here
                    ),
              ),
              child: Text('Karyawan'),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            Container(
              height: 100,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(
                    30.0,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(11.0),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Pencarian",
                      hintText: "Cari Pelanggan",
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Color(0xfff966be))))),
            )
          ],
        ),
      ),
    );
  }
}
