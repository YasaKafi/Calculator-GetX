import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PersegiController extends GetxController {
  var hasilLuas = 0.0.obs;
  var hasilKeliling = 0.0.obs;
  var hasilSisi = 0.0.obs;
  var sisiPersegi = TextEditingController();
  var luasPersegiController = TextEditingController();
  var kelilingPersegiController = TextEditingController();

  void luasPersegi() {
    double sisiValue = double.parse(sisiPersegi.text);
    hasilLuas.value = sisiValue * sisiValue;
    hasilSisi.value = sisiValue;
  }

  void kelilingPersegi() {
    double sisiValue = double.parse(sisiPersegi.text);
    hasilKeliling.value = sisiValue * 4;
    hasilSisi.value = sisiValue;
  }

  void findLuasPersegi() {
    double luasValue = double.parse(luasPersegiController.text);
    double sisiValue =
        sqrt(luasValue); // Menghitung akar kuadrat untuk mencari sisi
    hasilLuas.value = luasValue;
    hasilSisi.value = sisiValue;
    hasilKeliling.value = sisiValue * 4;
  }

  void findKelilingPersegi() {
    double kelilingValue = double.parse(kelilingPersegiController.text);
    double sisiValue = kelilingValue / 4;
    hasilLuas.value = sisiValue * sisiValue;
    hasilSisi.value = sisiValue;
    hasilKeliling.value = kelilingValue;
  }

  void resetTextFields() {
    sisiPersegi.clear();
    luasPersegiController.clear();
    kelilingPersegiController.clear();
    hasilLuas.value = 0.0;
    hasilKeliling.value = 0.0;
    hasilSisi.value = 0.0;
  }
}
