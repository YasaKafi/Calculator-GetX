import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController {
  var hasilLuas = 0.0.obs;
  var hasilKeliling = 0.0.obs;
  var hasilJariJari = 0.0.obs;
  var jariJariLingkaran = TextEditingController();


  void hitungLuasLingkaran() {
    double jariJariValue = double.parse(jariJariLingkaran.text);
    hasilLuas.value = 3.14 * jariJariValue * jariJariValue;
    hasilJariJari.value = jariJariValue;
  }

  void hitungKelilingLingkaran() {
    double jariJariValue = double.parse(jariJariLingkaran.text);
    hasilKeliling.value = 2 * 3.14 * jariJariValue;
    hasilJariJari.value = jariJariValue;
  }

  void resetTextFields() {
    jariJariLingkaran.clear();
    hasilLuas.value = 0.0;
    hasilKeliling.value = 0.0;
    hasilJariJari.value = 0.0;
  }
}
