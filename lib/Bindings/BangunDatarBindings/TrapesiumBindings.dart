import 'package:get/get.dart';

import '../../Controllers/BangunDatarControllers/TrapesiumController.dart';

class TrapesiumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrapesiumController());
    // TODO: implement dependencies
  }
}
