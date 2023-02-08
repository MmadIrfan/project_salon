import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Image.asset("assets/images/logo.png")),
          backgroundColor: Color(0xfff966be),
          title: const Text(
            'Wul@n Beauty Salon',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
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
              color: Colors.white,
              padding: const EdgeInsets.all(25.2),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Pencarian",
                  hintText: "Cari barang disini...",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Color(0xfff966be)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, i) {
                    return const Card(
                      elevation: 8,
                      child: ListTile(
                        title: Text(
                          "Nama Produk",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Sisa stok : 100'),
                        trailing: Text("Tambah"),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
