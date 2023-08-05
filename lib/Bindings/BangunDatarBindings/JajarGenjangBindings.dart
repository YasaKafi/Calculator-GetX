import 'package:calculator_getx/Controllers/BangunDatarControllers/JajarGenjangController.dart';
import 'package:get/get.dart';

class JajarGenjangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JajarGenjangController>(
          () => JajarGenjangController(),
    );
    // TODO: implement dependencies
  }

}