
import 'package:get/get.dart';

import '../../Controllers/BangunDatarControllers/PersegiController.dart';

class PersegiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersegiController>(
        () => PersegiController(),
    );
    // TODO: implement dependencies
  }

}