import 'package:get/get.dart';

import 'package:project_salon/app/modules/pengaturan/controllers/profil_controller.dart';

import 'package:project_salon/app/modules/pengaturan/controllers/gantisandi_controller.dart';

import 'package:project_salon/app/modules/pengaturan/controllers/ubahprofil_controller.dart';

import '../controllers/pengaturan_controller.dart';

class PengaturanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UbahProfilController>(
      () => UbahProfilController(),
    );
    Get.lazyPut<GantiSandiController>(
      () => GantiSandiController(),
    );
    Get.lazyPut<ProfilController>(
      () => ProfilController(),
    );
    Get.lazyPut<PengaturanController>(
      () => PengaturanController(),
    );
  }
}
