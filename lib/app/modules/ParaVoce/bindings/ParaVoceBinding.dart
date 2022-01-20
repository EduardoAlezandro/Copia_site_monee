import 'package:get/get.dart';

import '../controllers/ParaVoce_controller.dart';

class ParaVoceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ParaVoceController>(
      () => ParaVoceController(),
    );
  }
}
