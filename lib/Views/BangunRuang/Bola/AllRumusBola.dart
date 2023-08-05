import 'package:calculator_getx/Controllers/BangunRuangControllers/BolaController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllRumusBola extends StatelessWidget {
  final bolaCount = Get.find<BolaController>();

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
            controller: bolaCount.jariJariBola,
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
                if (bolaCount.jariJariBola.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  bolaCount.findVolume();

                }
              },
              child: const Text('Hitung Volume'),
            ),
            ElevatedButton(
              onPressed: () {
                if (bolaCount.jariJariBola.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  bolaCount.findLuasPermukaan();

                }
              },
              child: const Text('Hitung Luas Permukaan'),
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
              return Text('Volume Balok : ${bolaCount.hasilVolume.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text('Luas Permukaan Balok : ${bolaCount.hasilLuasPermukaan.toStringAsFixed(2)}');
            }),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            bolaCount.resetTextFields();
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
    'Semua Text Field harus diisi',
    backgroundColor: Colors.red,
    colorText: Colors.white,
  );
}