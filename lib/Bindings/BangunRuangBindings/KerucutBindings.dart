import 'package:calculator_getx/Controllers/BangunRuangControllers/KerucutController.dart';
import 'package:get/get.dart';

class KerucutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KerucutController>(
          () => KerucutController(),
    );
    // TODO: implement dependencies
  }

}