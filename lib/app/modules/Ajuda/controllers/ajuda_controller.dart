import 'package:get/get.dart';

class AjudaController extends GetxController {
  //TODO: Implement AjudaController
  RxBool menuclick = true.obs;
  RxBool efeitoclick = true.obs;
  RxBool efeitoclick1 = true.obs;
  RxBool efeitoclick2 = true.obs;
  RxBool efeitoclick3 = true.obs;
  RxBool efeitoclick4 = true.obs;
  RxBool efeitoclick5 = true.obs;
  RxBool efeitoclick6 = true.obs;
  RxBool efeitoclick7 = true.obs;
  RxBool efeitoclick8 = true.obs;
  RxBool efeitoclick9 = true.obs;
  RxBool efeitoclick10 = true.obs;
  RxBool efeitoclick11 = true.obs;
  RxBool efeitoclick12 = true.obs;
  RxBool efeitoclick13 = true.obs;

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
