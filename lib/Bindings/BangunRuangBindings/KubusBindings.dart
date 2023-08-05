import 'package:calculator_getx/Controllers/BangunRuangControllers/KubusController.dart';
import 'package:get/get.dart';

class KubusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KubusController>(
          () => KubusController(),
    );
    // TODO: implement dependencies
  }

}