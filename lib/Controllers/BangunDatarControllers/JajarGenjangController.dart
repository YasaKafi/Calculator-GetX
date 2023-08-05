import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class JajarGenjangController extends GetxController {
  var hasilLuas = 0.0.obs;
  var hasilKeliling = 0.0.obs;
  var hasilAlas = 0.0.obs;
  var hasilTinggi = 0.0.obs;
  var alasController = TextEditingController();
  var tinggiController = TextEditingController();
  var luasJajarGenjangController = TextEditingController();
  var kelilingJajarGenjangController = TextEditingController();

  void hitungLuasJajarGenjang() {
    double alasValue = double.parse(alasController.text);
    double tinggiValue = double.parse(tinggiController.text);
    hasilLuas.value = alasValue * tinggiValue;

  }

  void hitungKelilingJajarGenjang() {
    double alasValue = double.parse(alasController.text);
    double tinggiValue = double.parse(tinggiController.text);
    double sisiMiring = sqrt(pow(alasValue / 2, 2) + pow(tinggiValue, 2));
    hasilKeliling.value = 2 * (alasValue + sisiMiring);

  }

  void resetTextFields() {
    alasController.clear();
    tinggiController.clear();
    luasJajarGenjangController.clear();
    kelilingJajarGenjangController.clear();
    hasilLuas.value = 0.0;
    hasilKeliling.value = 0.0;
    hasilAlas.value = 0.0;
    hasilTinggi.value = 0.0;
  }
}
