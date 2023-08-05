import 'package:calculator_getx/Controllers/BangunDatarControllers/LingkaranController.dart';
import 'package:get/get.dart';

class LingkaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LingkaranController>(
          () => LingkaranController(),
    );
    // TODO: implement dependencies
  }

}