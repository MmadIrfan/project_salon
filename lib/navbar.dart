import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_salon/app/modules/home/views/home_view.dart';
import 'package:project_salon/app/modules/pelanggan/views/pelanggan_view.dart';
import 'package:project_salon/app/modules/pengaturan/views/pengaturan_view.dart';
import 'landing_page_controller.dart';

class LandingPage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Color.fromARGB(94, 94, 94, 94).withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = TextStyle(
      color: Color(0xfff966be), fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Color(0xffffffff),
            unselectedItemColor:
                Color.fromARGB(94, 94, 94, 94).withOpacity(0.5),
            selectedItemColor: Color(0xfff966be),
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: ImageIcon(
                    AssetImage("assets/icons/stokproduk.png"),
                    size: 20.0,
                  ),
                ),
                label: 'Produk',
                backgroundColor: Color(0xffffffff),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: ImageIcon(
                    AssetImage("assets/icons/pelanggan.png"),
                    size: 20.0,
                  ),
                ),
                label: 'Pelanggan',
                backgroundColor: Color(0xffffffff),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: ImageIcon(
                    AssetImage("assets/icons/uisetting.png"),
                    size: 20.0,
                  ),
                ),
                label: 'Settings',
                backgroundColor: Color(0xffffffff),
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              HomeView(),
              PelangganView(),
              PengaturanView(),
            ],
          )),
    ));
  }
}
