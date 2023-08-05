import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PersegiPanjangController extends GetxController {
  var hasilLuas = 0.0.obs;
  var hasilKeliling = 0.0.obs;
  var hasilPanjang = 0.0.obs;
  var hasilLebar = 0.0.obs;
  var panjangController = TextEditingController();
  var lebarController = TextEditingController();
  var luasPersegiPanjangController = TextEditingController();
  var kelilingPersegiPanjangController = TextEditingController();

  void luasPersegiPanjang() {
    double panjangValue = double.parse(panjangController.text);
    double lebarValue = double.parse(lebarController.text);
    hasilLuas.value = panjangValue * lebarValue;
    hasilPanjang.value = panjangValue;
    hasilLebar.value = lebarValue;
  }

  void kelilingPersegiPanjang() {
    double panjangValue = double.parse(panjangController.text);
    double lebarValue = double.parse(lebarController.text);
    hasilKeliling.value = 2 * (panjangValue + lebarValue);
    hasilPanjang.value = panjangValue;
    hasilLebar.value = lebarValue;
  }

  void findLebarPersegiPanjang() {
    double luasValue = double.parse(luasPersegiPanjangController.text);
    double panjangValue = double.parse(panjangController.text);
    double lebarValue = luasValue / panjangValue; // Menghitung lebar berdasarkan luas

    hasilLebar.value = lebarValue;

  }

  void findPanjangPersegiPanjang() {
    double luasValue = double.parse(luasPersegiPanjangController.text);
    double lebarValue = double.parse(lebarController.text);
    double panjangValue = luasValue / lebarValue; // Menghitung panjang berdasarkan luas

    hasilPanjang.value = panjangValue;

  }


  // void findKelilingPersegiPanjang() {
  //   double kelilingValue = double.parse(kelilingPersegiPanjangController.text);
  //   double panjangValue = kelilingValue / 2 -
  //       double.parse(lebarController.text); // Menghitung panjang berdasarkan keliling
  //   double lebarValue = kelilingValue / 2 -
  //       double.parse(panjangController.text); // Menghitung lebar berdasarkan keliling
  //   hasilLuas.value = panjangValue * lebarValue;
  //   hasilPanjang.value = panjangValue;
  //   hasilLebar.value = lebarValue;
  //   hasilKeliling.value = kelilingValue;
  // }

  void resetTextFields() {
    panjangController.clear();
    lebarController.clear();
    luasPersegiPanjangController.clear();
    kelilingPersegiPanjangController.clear();
    hasilLuas.value = 0.0;
    hasilKeliling.value = 0.0;
    hasilPanjang.value = 0.0;
    hasilLebar.value = 0.0;
  }
}
