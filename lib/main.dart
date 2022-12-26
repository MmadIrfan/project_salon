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
      getPages: AppPages.routes,
      home: GetxBottomBarView(
        getPages: AppPages.routes,
        routes: const [Routes.HOME, Routes.PELANGGAN, Routes.PENGATURAN],
        defaultTransition: Transition.noTransition,
        bottomBar: <GetBottomBarItem>[
          GetBottomBarItem(
              icon: Icon(Icons.dashboard),
              title: Text('Stok'),
              activeColor: Colors.red),
          GetBottomBarItem(
              icon: Icon(Icons.person),
              title: Text('Pelanggan'),
              activeColor: Colors.red),
          GetBottomBarItem(
              icon: Icon(Icons.person_add),
              title: Text('Pengaturan'),
              activeColor: Colors.red)
        ],
      ),
    ),
  );
}
