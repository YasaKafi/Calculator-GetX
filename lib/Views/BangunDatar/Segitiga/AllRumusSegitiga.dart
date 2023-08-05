import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/Controllers/BangunDatarControllers/SegitigaController.dart';

class AllRumusSegitiga extends GetView<SegitigaController> {
  const AllRumusSegitiga({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller.alasSegitiga,
            decoration: const InputDecoration(
              labelText: 'Masukkan Alas',
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 50,
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller.tinggiSegitigaController,
            decoration: const InputDecoration(
              labelText: 'Masukkan Tinggi',
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                if (controller.alasSegitiga.text.isEmpty ||controller.tinggiSegitigaController.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  controller.luasSegitiga();
                  controller.kelilingSegitiga();
                }
              },
              child: const Text('Hitung Keliling & Luas'),
            ),

            ElevatedButton(
              onPressed: () {
                if (controller.tinggiSegitigaController.text.isEmpty || controller.alasSegitiga.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  controller.findSisiMiring();
                }
              },
              child: const Text('Cari Sisi Miring'),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller.luasSegitigaController,
            decoration: const InputDecoration(
              labelText: 'Masukkan Luas & Alas',
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (controller.luasSegitigaController.text.isEmpty || controller.alasSegitiga.text.isEmpty) {
              Get.snackbar(
                  'Peringatan',
                  'Text Field Alas dan Luas harus diisi',
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
              );
            } else {
              controller.findLuasSegitiga();
            }
          },
          child: const Text('Cari Sisi Miring'),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller.kelilingSegitigaController,
            decoration:  const InputDecoration(
              labelText: 'Masukkan Keliling Alas',
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (controller.kelilingSegitigaController.text.isEmpty || controller.alasSegitiga.text.isEmpty) {
              Get.snackbar(
                'Peringatan',
                'Text Field Alas dan Keliling harus diisi',
                backgroundColor: Colors.red,
                colorText: Colors.white,
              );
            } else {
              controller.findKelilingSegitiga();
            }
          },
          child: const Text('Cari Sisi Miring'),
        ),
        const SizedBox(
          height: 7,
        ),
        const Text(
          'Hasil : ',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 7,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              return Text('Alas Segitiga : ${controller.hasilAlas.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text('Tinggi Segitiga : ${controller.hasilTinggi.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text('Sisi Miring Segitiga : ${controller.hasilSisiMiring.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text('Luas Segitiga : ${controller.hasilLuas.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text('Keliling Segitiga : ${controller.hasilKeliling.toStringAsFixed(2)}');
            }),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            controller.resetTextFields();
          },
          child: const Text('Reset Text Fields'),
        ),
      ],
    );
  }
}
void showEmptyFieldSnackbar() {
  Get.snackbar(
    'Peringatan',
    'Text Field harus diisi',
    backgroundColor: Colors.red,
    colorText: Colors.white,
  );
}