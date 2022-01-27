import 'package:get/get.dart';

class AjudaController extends GetxController {
  //TODO: Implement AjudaController
  RxBool menuclick = true.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
