import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class KubusController extends GetxController {
  var hasilVolume = 0.0.obs;
  var hasilLuasPermukaan = 0.0.obs;
  var sisiKubus = TextEditingController();


  void findVolume() {
    double sisiValue = double.parse(sisiKubus.text);
    hasilVolume.value = pow(sisiValue, 3).toDouble();
  }

  void findLuasPermukaan() {
    double sisiValue = double.parse(sisiKubus.text);
    hasilLuasPermukaan.value = 6 * pow(sisiValue, 2).toDouble();
  }

  void resetTextFields() {
    sisiKubus.clear();
    hasilVolume.value = 0.0;
    hasilLuasPermukaan.value = 0.0;
  }
}
