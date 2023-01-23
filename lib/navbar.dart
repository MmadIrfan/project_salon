import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbottombar/getxbottombar.dart';
import 'app/routes/app_pages.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetxBottomBarView(
      getPages: AppPages.routes,
      routes: const [Routes.HOME, Routes.PELANGGAN, Routes.PENGATURAN],
      defaultTransition: Transition.noTransition,
      bottomBar: <GetBottomBarItem>[
        GetBottomBarItem(
            icon: Image(image: AssetImage('assets/icons/stokproduk.png')),
            title: Text('Stock'),
            activeColor: Colors.red),
        GetBottomBarItem(
            icon: Image(image: AssetImage('assets/icons/pelanggan.png')),
            title: Text('Customer'),
            activeColor: Colors.red),
        GetBottomBarItem(
            icon: Image(image: AssetImage('assets/icons/uisetting.png')),
            title: Text('Setting'),
            activeColor: Colors.red)
      ],
    );
  }
}
