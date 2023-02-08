import 'package:get/get.dart';
import 'package:project_salon/navbar.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/pelanggan/bindings/pelanggan_binding.dart';
import '../modules/pelanggan/views/pelanggan_view.dart';
import '../modules/pengaturan/bindings/pengaturan_binding.dart';
import '../modules/pengaturan/views/pengaturan_view.dart';
import '../modules/pengaturan/views/profil_view.dart';
import '../modules/pengaturan/views/gantisandi_view.dart';
import '../modules/pengaturan/views/ubahprofil_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAVBAR;

  static final routes = [
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const BottomMenu(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PELANGGAN,
      page: () => const PelangganView(),
      binding: PelangganBinding(),
    ),
    GetPage(
      name: _Paths.PENGATURAN,
      page: () => const PengaturanView(),
      binding: PengaturanBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => const ProfilView(),
      binding: PengaturanBinding(),
    ),
    GetPage(
      name: _Paths.GANTISANDI,
      page: () => const GantiSandiView(),
      binding: PengaturanBinding(),
    ),
    GetPage(
      name: _Paths.UBAHPROFIL,
      page: () => const UbahProfilView(),
      binding: PengaturanBinding(),
    ),
  ];
}
