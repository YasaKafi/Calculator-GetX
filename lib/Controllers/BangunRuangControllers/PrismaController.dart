import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PrismaController extends GetxController {
  var hasilVolume = 0.0.obs;
  var hasilLuasPermukaan = 0.0.obs;
  var panjangPrismaController = TextEditingController();
  var lebarPrismaController = TextEditingController();
  var tinggiPrismaController = TextEditingController();

  void findVolume() {
    double panjangValue = double.parse(panjangPrismaController.text);
    double lebarValue = double.parse(lebarPrismaController.text);
    double tinggiValue = double.parse(tinggiPrismaController.text);
    hasilVolume.value = panjangValue * lebarValue * tinggiValue;
  }

  void findLuasPermukaan() {
    double panjangValue = double.parse(panjangPrismaController.text);
    double lebarValue = double.parse(lebarPrismaController.text);
    double tinggiValue = double.parse(tinggiPrismaController.text);
    hasilLuasPermukaan.value = 2 * (panjangValue * lebarValue + panjangValue * tinggiValue + lebarValue * tinggiValue);
  }

  void resetTextFields() {
    panjangPrismaController.clear();
    lebarPrismaController.clear();
    tinggiPrismaController.clear();
    hasilVolume.value = 0.0;
    hasilLuasPermukaan.value = 0.0;
  }
}
