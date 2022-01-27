import 'package:get/get.dart';

class ParaEmpresasController extends GetxController {
  //TODO: Implement ParaEmpresasController

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
