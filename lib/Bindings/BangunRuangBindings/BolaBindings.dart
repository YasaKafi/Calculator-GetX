import 'package:calculator_getx/Controllers/BangunRuangControllers/BolaController.dart';
import 'package:get/get.dart';

class BolaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BolaController>(
          () => BolaController(),
    );
    // TODO: implement dependencies
  }

}