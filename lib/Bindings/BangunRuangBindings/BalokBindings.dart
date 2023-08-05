import 'package:calculator_getx/Controllers/BangunRuangControllers/BalokController.dart';
import 'package:get/get.dart';

class BalokBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BalokController>(
          () => BalokController(),
    );
    // TODO: implement dependencies
  }

}