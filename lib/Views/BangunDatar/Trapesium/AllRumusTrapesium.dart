import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/BangunDatarControllers/TrapesiumController.dart';

class AllRumusTrapesium extends GetView<TrapesiumController> {

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
            controller: controller.alas1Controller,
            decoration: const InputDecoration(
              labelText: 'Masukkan Alas 1',
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller.alas2Controller,
            decoration: const InputDecoration(
              labelText: 'Masukkan Alas 2',
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller.tinggiController,
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
                if (controller.alas1Controller.text.isEmpty ||
                    controller.alas2Controller.text.isEmpty ||
                    controller.tinggiController.text.isEmpty) {
                  Get.snackbar(
                    'Peringatan',
                    'Text Field Alas 1, Alas 2 & Tinggi harus diisi',
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                } else {
                  controller.luasTrapesium();
                }
              },
              child: const Text('Hitung Luas'),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.alas1Controller.text.isEmpty ||
                    controller.alas2Controller.text.isEmpty) {
                  Get.snackbar(
                    'Peringatan',
                    'Text Field Alas 1 dan Alas 2 harus diisi',
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                } else {
                  controller.kelilingTrapesium();
                }
              },
              child: const Text('Hitung Keliling'),
            ),
          ],
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
              return Text(
                  'Luas Trapesium : ${controller.hasilLuas.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text(
                  'Keliling Trapesium : ${controller.hasilKeliling.toStringAsFixed(2)}');
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
