import 'package:calculator_getx/Controllers/BangunRuangControllers/TabungController.dart';
import 'package:get/get.dart';

class TabungBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabungController>(
          () => TabungController(),
    );
    // TODO: implement dependencies
  }

}