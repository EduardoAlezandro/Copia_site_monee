import 'package:get/get.dart';

class BlogController extends GetxController {
  //TODO: Implement BlogController
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
