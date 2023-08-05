import 'package:calculator_getx/Controllers/BangunRuangControllers/PrismaController.dart';
import 'package:get/get.dart';

class PrismaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrismaController>(
          () => PrismaController(),
    );
    // TODO: implement dependencies
  }

}