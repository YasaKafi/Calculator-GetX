import 'package:calculator_getx/Controllers/BangunDatarControllers/SegitigaController.dart';
import 'package:get/get.dart';

class SegitigaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SegitigaController());
    // TODO: implement dependencies
  }

}