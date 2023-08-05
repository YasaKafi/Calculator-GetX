import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrapesiumController extends GetxController {
  var hasilLuas = 0.0.obs;
  var hasilKeliling = 0.0.obs;
  var hasilAlas1 = 0.0.obs;
  var hasilAlas2 = 0.0.obs;
  var hasilTinggi = 0.0.obs;

  var alas1Controller = TextEditingController();
  var alas2Controller = TextEditingController();
  var tinggiController = TextEditingController();

  void luasTrapesium() {
    double alas1Value = double.parse(alas1Controller.text);
    double alas2Value = double.parse(alas2Controller.text);
    double tinggiValue = double.parse(tinggiController.text);

    hasilLuas.value = 0.5 * (alas1Value + alas2Value) * tinggiValue;
    hasilAlas1.value = alas1Value;
    hasilAlas2.value = alas2Value;
    hasilTinggi.value = tinggiValue;
  }

  void kelilingTrapesium() {
    double alas1Value = double.parse(alas1Controller.text);
    double alas2Value = double.parse(alas2Controller.text);

    // Diasumsikan sisi miring trapesium sudah diketahui
    double sisiMiring = 10.0; // Ganti nilai ini sesuai dengan nilai sisi miring yang diketahui
    hasilKeliling.value = alas1Value + alas2Value + 2 * sisiMiring;
    hasilAlas1.value = alas1Value;
    hasilAlas2.value = alas2Value;
  }

  void resetTextFields() {
    alas1Controller.clear();
    alas2Controller.clear();
    tinggiController.clear();
    hasilLuas.value = 0.0;
    hasilKeliling.value = 0.0;
    hasilAlas1.value = 0.0;
    hasilAlas2.value = 0.0;
    hasilTinggi.value = 0.0;
  }
}
