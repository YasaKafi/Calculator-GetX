import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BolaController extends GetxController {
  var hasilVolume = 0.0.obs;
  var hasilLuasPermukaan = 0.0.obs;
  var jariJariBola = TextEditingController();

  void findVolume() {
    double jariJariValue = double.parse(jariJariBola.text);
    hasilVolume.value = (4 / 3) * pi * pow(jariJariValue, 3);
  }

  void findLuasPermukaan() {
    double jariJariValue = double.parse(jariJariBola.text);
    hasilLuasPermukaan.value = 4 * pi * pow(jariJariValue, 2);
  }

  void resetTextFields() {
    jariJariBola.clear();
    hasilVolume.value = 0.0;
    hasilLuasPermukaan.value = 0.0;
  }
}
