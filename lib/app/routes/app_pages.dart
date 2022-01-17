import 'package:get/get.dart';

import '../modules/Quem_somos/bindings/quem_somos_binding.dart';
import '../modules/Quem_somos/views/quem_somos_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.QUEM_SOMOS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.QUEM_SOMOS,
      page: () => QuemSomosView(),
      binding: QuemSomosBinding(),
    ),
  ];
}
