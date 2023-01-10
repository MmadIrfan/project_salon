import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbottombar/getxbottombar.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      home: GetxBottomBarView(
        getPages: AppPages.routes,
        routes: const [Routes.HOME, Routes.PELANGGAN, Routes.PENGATURAN],
        defaultTransition: Transition.noTransition,
        bottomBar: <GetBottomBarItem>[
          GetBottomBarItem(
              icon: Image(image: AssetImage('assets/icons/stokproduk.png')),
              title: Text('Stok'),
              activeColor: Colors.red),
          GetBottomBarItem(
              icon: Image(image: AssetImage('assets/icons/pelanggan.png')),
              title: Text('Pelanggan'),
              activeColor: Colors.red),
          GetBottomBarItem(
              icon: Image(image: AssetImage('assets/icons/uisetting.png')),
              title: Text('Pengaturan'),
              activeColor: Colors.red)
        ],
      ),
    ),
  );
}
