import 'package:calculator_getx/Controllers/BangunDatarControllers/PersegiPanjangController.dart';
import 'package:get/get.dart';

class PersegiPanjangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersegiPanjangController>(
          () => PersegiPanjangController(),
    );
  }
}