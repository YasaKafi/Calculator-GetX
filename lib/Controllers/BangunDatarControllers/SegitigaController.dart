import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SegitigaController extends GetxController {
  var hasilLuas = 0.0.obs;
  var hasilKeliling = 0.0.obs;
  var hasilAlas = 0.0.obs;
  var hasilTinggi = 0.0.obs;
  var hasilSisiMiring = 0.0.obs; // Variabel untuk menyimpan nilai sisi miring
  var alasSegitiga = TextEditingController();
  var tinggiSegitigaController = TextEditingController();
  var luasSegitigaController = TextEditingController();
  var kelilingSegitigaController = TextEditingController();
  var sisiMiringSegitigaController = TextEditingController(); // TextEditingController untuk sisi miring

  void luasSegitiga() {
    double alasValue = double.parse(alasSegitiga.text);
    double tinggiValue = double.parse(tinggiSegitigaController.text);
    hasilLuas.value = 0.5 * alasValue * tinggiValue;
    hasilAlas.value = alasValue;
    hasilTinggi.value = tinggiValue;

  }

  void findSisiMiring() {
    double alasValue = double.parse(alasSegitiga.text);
    double tinggiValue = double.parse(tinggiSegitigaController.text);
    double sisiMiring = sqrt(alasValue * alasValue + tinggiValue * tinggiValue);
    hasilAlas.value = alasValue;
    hasilTinggi.value = tinggiValue;
    hasilSisiMiring.value = sisiMiring; // Simpan nilai sisi miring

  }
  void kelilingSegitiga() {
    double alasValue = double.parse(alasSegitiga.text);
    double tinggiValue = double.parse(tinggiSegitigaController.text);
    double sisiMiring = sqrt(alasValue * alasValue + tinggiValue * tinggiValue);
    hasilKeliling.value = alasValue + tinggiValue + sisiMiring;
    hasilAlas.value = alasValue;
    hasilTinggi.value = tinggiValue;


  }

  void findLuasSegitiga() {
    double luasValue = double.parse(luasSegitigaController.text);
    double alasValue = double.parse(alasSegitiga.text);
    double tinggiValue = (2 * luasValue) / alasValue;
    hasilLuas.value = luasValue;
    hasilAlas.value = alasValue;
    hasilTinggi.value = tinggiValue;
    hasilSisiMiring.value = sqrt(alasValue * alasValue + tinggiValue * tinggiValue); // Hitung sisi miring

     // Set nilai sisi miring di controller
  }

  void findKelilingSegitiga() {
    double kelilingValue = double.parse(kelilingSegitigaController.text);
    double alasValue = double.parse(alasSegitiga.text);
    double tinggiValue = kelilingValue - (2 * alasValue);
    double sisiMiring = sqrt(alasValue * alasValue + tinggiValue * tinggiValue);
    hasilLuas.value = 0.5 * alasValue * tinggiValue;
    hasilAlas.value = alasValue;
    hasilTinggi.value = tinggiValue;
    hasilSisiMiring.value = sisiMiring;
    hasilKeliling.value = kelilingValue;// Simpan nilai sisi miring

     // Set nilai sisi miring di controller
  }

  void resetTextFields() {


    alasSegitiga.clear();
    tinggiSegitigaController.clear();
    luasSegitigaController.clear();
    kelilingSegitigaController.clear();
    sisiMiringSegitigaController.clear();
    hasilLuas.value = 0.0;
    hasilKeliling.value = 0.0;
    hasilAlas.value = 0.0;
    hasilTinggi.value = 0.0;
    hasilSisiMiring.value = 0.0;
  }
}
