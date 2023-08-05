import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controllers/BangunDatarControllers/PersegiController.dart';

class AllRumusPersegi extends GetView<PersegiController> {


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
            controller: controller.sisiPersegi,
            decoration: const InputDecoration(
                labelText: 'Masukkan Sisi',
                contentPadding: EdgeInsets.only(left: 10, right: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  if (controller.sisiPersegi.text.isEmpty) {
                    showEmptyFieldSnackbar();
                  } else {
                    controller.luasPersegi();
                  }

                },
                child: const Text('Hitung Luas')),
            ElevatedButton(
                onPressed: () {
                  if (controller.sisiPersegi.text.isEmpty) {
                    showEmptyFieldSnackbar();
                  } else {
                    controller.kelilingPersegi();
                  }

                },
                child: const Text('Hitung Keliling')),
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
            controller: controller.luasPersegiController,
            decoration: const InputDecoration(
                labelText: 'Masukkan Luas',
                contentPadding: EdgeInsets.only(left: 10, right: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              if (controller.luasPersegiController.text.isEmpty) {
                showEmptyFieldSnackbar();
              } else {
                controller.findLuasPersegi();
              }
            },
            child: const Text('Mencari nilai Sisi & Keliling')),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller.kelilingPersegiController,
            decoration: const InputDecoration(
                labelText: 'Masukkan Keliling',
                contentPadding: EdgeInsets.only(left: 10, right: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              if (controller.kelilingPersegiController.text.isEmpty) {
                showEmptyFieldSnackbar();
              } else {
                controller.findKelilingPersegi();
              }

            },
            child: const Text('Mencari nilai Sisi & Luas')),
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
                  'Sisi Persegi : ${controller.hasilSisi.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text(
                  'Luas Persegi : ${controller.hasilLuas.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text(
                  'Keliling Persegi : ${controller.hasilKeliling.toStringAsFixed(2)}');
            }),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            controller.resetTextFields();
          },
          child:  const Text('Reset Text Fields'),
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
