import 'package:get/get.dart';

class ParaVoceController extends GetxController {
  //TODO: Implement Teste1Controller

  final count = 0.obs;
  RxBool menuclick = true.obs;

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
