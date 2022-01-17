import 'package:get/get.dart';

import '../controllers/quem_somos_controller.dart';

class QuemSomosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuemSomosController>(
      () => QuemSomosController(),
    );
  }
}
