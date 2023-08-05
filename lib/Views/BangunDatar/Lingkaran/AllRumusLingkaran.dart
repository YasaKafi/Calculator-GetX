import 'package:calculator_getx/Controllers/BangunDatarControllers/LingkaranController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AllRumusLingkaran extends GetView<LingkaranController> {

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
            controller: controller.jariJariLingkaran,
            decoration: const InputDecoration(
              labelText: 'Masukkan Jari-Jari',
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                if (controller.jariJariLingkaran.text.isEmpty) {
                  Get.snackbar(
                    'Peringatan',
                    'Text Field Jari-Jari harus diisi',
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                } else {
                  controller.hitungLuasLingkaran();

                }
              },
              child: const Text('Hitung Luas'),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.jariJariLingkaran.text.isEmpty) {
                  Get.snackbar(
                    'Peringatan',
                    'Text Field Jari-Jari harus diisi',
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                } else {
                  controller.hitungKelilingLingkaran();

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
              return Text('Luas Lingkaran : ${controller.hasilLuas.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text('Keliling Lingkaran : ${controller.hasilKeliling.toStringAsFixed(2)}');
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