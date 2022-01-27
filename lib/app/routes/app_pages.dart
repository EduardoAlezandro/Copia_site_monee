import 'package:get/get.dart';

import '../modules/Ajuda/bindings/ajuda_binding.dart';
import '../modules/Ajuda/views/ajuda_view.dart';
import '../modules/ParaVoce/bindings/ParaVoceBinding.dart';
import '../modules/ParaVoce/views/ParaVoce_view.dart';
import '../modules/Para_empresas/bindings/para_empresas_binding.dart';
import '../modules/Para_empresas/views/para_empresas_view.dart';
import '../modules/Quem_somos/bindings/quem_somos_binding.dart';
import '../modules/Quem_somos/views/quem_somos_view.dart';
import '../modules/blog/bindings/blog_binding.dart';
import '../modules/blog/views/blog_view.dart';
import '../modules/consiguinado_privado/bindings/consiguinado_privado_binding.dart';
import '../modules/consiguinado_privado/views/consiguinado_privado_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
    GetPage(
      name: _Paths.CONSIGUINADO_PRIVADO,
      page: () => ConsiguinadoPrivadoView(),
      binding: ConsiguinadoPrivadoBinding(),
    ),
    GetPage(
      name: _Paths.PARA_VOCE,
      page: () => ParaVoceView(),
      binding: ParaVoceBinding(),
    ),
    GetPage(
      name: _Paths.PARA_EMPRESAS,
      page: () => ParaEmpresasView(),
      binding: ParaEmpresasBinding(),
    ),
    GetPage(
      name: _Paths.BLOG,
      page: () => BlogView(),
      binding: BlogBinding(),
    ),
    GetPage(
      name: _Paths.AJUDA,
      page: () => AjudaView(),
      binding: AjudaBinding(),
    ),
  ];
}
