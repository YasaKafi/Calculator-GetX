import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class KerucutController extends GetxController {
  var hasilVolume = 0.0.obs;
  var hasilLuasPermukaan = 0.0.obs;
  var hasilJariJari = 0.0.obs;
  var hasilTinggi = 0.0.obs;
  var jariJariKerucut = TextEditingController();
  var tinggiKerucut = TextEditingController();

  void findVolume() {
    double jariJariValue = double.parse(jariJariKerucut.text);
    double tinggiValue = double.parse(tinggiKerucut.text);
    double volume = (1 / 3) * pi * pow(jariJariValue, 2) * tinggiValue;
    hasilVolume.value = volume;

  }

  void findLuasPermukaan() {
    double jariJariValue = double.parse(jariJariKerucut.text);
    double tinggiValue = double.parse(tinggiKerucut.text);
    double s = sqrt(pow(jariJariValue, 2) + pow(tinggiValue, 2));
    double luasPermukaan = pi * jariJariValue * (jariJariValue + s);
    hasilLuasPermukaan.value = luasPermukaan;
  }

  void resetTextFields() {
    jariJariKerucut.clear();
    tinggiKerucut.clear();
    hasilVolume.value = 0.0;
    hasilLuasPermukaan.value = 0.0;
  }
}
