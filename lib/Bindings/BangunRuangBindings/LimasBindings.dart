import 'package:calculator_getx/Controllers/BangunRuangControllers/LimasController.dart';
import 'package:get/get.dart';

class LimasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LimasController>(
          () => LimasController(),
    );
    // TODO: implement dependencies
  }

}