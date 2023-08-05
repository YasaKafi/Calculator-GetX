import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BalokController extends GetxController {
  var hasilVolume = 0.0.obs;
  var hasilLuasPermukaan = 0.0.obs;
  var panjangBalok = TextEditingController();
  var lebarBalok = TextEditingController();
  var tinggiBalok = TextEditingController();

  void findVolume() {
    double panjang = double.parse(panjangBalok.text);
    double lebar = double.parse(lebarBalok.text);
    double tinggi = double.parse(tinggiBalok.text);
    hasilVolume.value = panjang * lebar * tinggi;
  }

  void findLuasPermukaan() {
    double panjang = double.parse(panjangBalok.text);
    double lebar = double.parse(lebarBalok.text);
    double tinggi = double.parse(tinggiBalok.text);
    hasilLuasPermukaan.value = 2 * ((panjang * lebar) + (panjang * tinggi) + (lebar * tinggi));
  }

  void resetTextFields() {
    panjangBalok.clear();
    lebarBalok.clear();
    tinggiBalok.clear();
    hasilVolume.value = 0.0;
    hasilLuasPermukaan.value = 0.0;
  }
}
