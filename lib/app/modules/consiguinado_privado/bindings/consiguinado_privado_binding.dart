import 'package:get/get.dart';

import '../controllers/consiguinado_privado_controller.dart';

class ConsiguinadoPrivadoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsiguinadoPrivadoController>(
      () => ConsiguinadoPrivadoController(),
    );
  }
}
