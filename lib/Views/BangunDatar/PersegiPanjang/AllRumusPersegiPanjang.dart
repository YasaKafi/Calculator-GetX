import 'package:calculator_getx/Controllers/BangunDatarControllers/PersegiPanjangController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllRumusPersegiPanjang extends GetView<PersegiPanjangController> {
  const AllRumusPersegiPanjang({super.key});


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
            controller: controller.panjangController,
            decoration: const InputDecoration(
              labelText: 'Masukkan Panjang',
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
            controller: controller.lebarController,
            decoration: const InputDecoration(
              labelText: 'Masukkan Lebar',
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
                if (controller.panjangController.text.isEmpty ||
                    controller.lebarController.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  controller.luasPersegiPanjang();
                }
              },
              child: const Text('Hitung Luas'),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.panjangController.text.isEmpty ||
                    controller.lebarController.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  controller.kelilingPersegiPanjang();
                }
              },
              child: const Text('Hitung Keliling'),
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
            controller: controller.luasPersegiPanjangController,
            decoration: const InputDecoration(
              labelText: 'Masukkan Luas & Alas',
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
                if (controller.luasPersegiPanjangController.text.isEmpty ||
                    controller.panjangController.text.isEmpty) {
                  Get.snackbar(
                    'Peringatan',
                    'Text Field Panjang dan Luas harus diisi',
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                } else {
                  controller.findLebarPersegiPanjang();
                }
              },
              child: const Text('Cari Lebar'),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.luasPersegiPanjangController.text.isEmpty ||
                    controller.lebarController.text.isEmpty) {
                  Get.snackbar(
                    'Peringatan',
                    'Text Field Lebar dan Luas harus diisi',
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                } else {
                  controller.findPanjangPersegiPanjang();
                }
              },
              child: const Text('Cari Panjang'),
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
                  'Panjang Persegi Panjang : ${controller.hasilPanjang.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text(
                  'Lebar Persegi Panjang : ${controller.hasilLebar.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text(
                  'Luas Persegi Panjang : ${controller.hasilLuas.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text(
                  'Keliling Persegi Panjang : ${controller.hasilKeliling.toStringAsFixed(2)}');
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
