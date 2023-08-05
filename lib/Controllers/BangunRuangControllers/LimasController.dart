import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LimasController extends GetxController {
  var hasilVolume = 0.0.obs;
  var hasilLuasPermukaan = 0.0.obs;
  var sisiLimas = TextEditingController();
  var tinggiLimas = TextEditingController();

  void findVolume() {
    double sisiValue = double.parse(sisiLimas.text);
    double tinggiValue = double.parse(tinggiLimas.text);
    hasilVolume.value = (1 / 3) * pow(sisiValue, 2) * tinggiValue;
  }

  void findLuasPermukaan() {
    double sisiValue = double.parse(sisiLimas.text);
    double tinggiValue = double.parse(tinggiLimas.text);
    hasilLuasPermukaan.value = pow(sisiValue, 2) + (4 * (0.5 * sisiValue) * tinggiValue);
  }

  void resetTextFields() {
    sisiLimas.clear();
    tinggiLimas.clear();
    hasilVolume.value = 0.0;
    hasilLuasPermukaan.value = 0.0;
  }
}
