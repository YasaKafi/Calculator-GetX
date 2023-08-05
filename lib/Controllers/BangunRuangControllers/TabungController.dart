import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TabungController extends GetxController {
  var hasilVolume = 0.0.obs;
  var hasilLuasPermukaan = 0.0.obs;
  var hasilJariJari = 0.0.obs;
  var hasilTinggi = 0.0.obs;
  var jariJariTabung = TextEditingController();
  var tinggiTabung = TextEditingController();


  void findVolume() {
    double jariJariValue = double.parse(jariJariTabung.text);
    double tinggiValue = double.parse(tinggiTabung.text);

    hasilVolume.value = pi * pow(jariJariValue, 2) * tinggiValue;

  }

  void findLuasPermukaan() {
    double jariJariValue = double.parse(jariJariTabung.text);
    double tinggiValue = double.parse(tinggiTabung.text);

    hasilLuasPermukaan.value =
        2 * pi * jariJariValue * (jariJariValue + tinggiValue);

  }

  void resetTextFields() {
    jariJariTabung.clear();
    tinggiTabung.clear();

    hasilVolume.value = 0.0;
    hasilLuasPermukaan.value = 0.0;

  }
}
