import 'package:get/get.dart';

import '../controllers/ajuda_controller.dart';

class AjudaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AjudaController>(
      () => AjudaController(),
    );
  }
}
