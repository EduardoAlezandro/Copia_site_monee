import 'package:get/get.dart';

import '../controllers/para_empresas_controller.dart';

class ParaEmpresasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ParaEmpresasController>(
      () => ParaEmpresasController(),
    );
  }
}
