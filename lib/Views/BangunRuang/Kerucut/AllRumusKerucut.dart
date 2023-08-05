import 'package:calculator_getx/Controllers/BangunRuangControllers/KerucutController.dart';
import 'package:calculator_getx/Controllers/BangunRuangControllers/LimasController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllRumusKerucut extends StatelessWidget {
  final kerucutCount = Get.find<KerucutController>();

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
            controller: kerucutCount.jariJariKerucut,
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
        Container(
          height: 50,
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: kerucutCount.tinggiKerucut,
            decoration: const InputDecoration(
              labelText: 'Masukkan Tinggi',
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
                if (kerucutCount.jariJariKerucut.text.isEmpty || kerucutCount.tinggiKerucut.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  kerucutCount.findVolume();

                }
              },
              child: const Text('Hitung Volume'),
            ),
            ElevatedButton(
              onPressed: () {
                if (kerucutCount.jariJariKerucut.text.isEmpty || kerucutCount.tinggiKerucut.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  kerucutCount.findLuasPermukaan();

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
              return Text('Volume Kerucut : ${kerucutCount.hasilVolume.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text('Luas Permukaan Kerucut : ${kerucutCount.hasilLuasPermukaan.toStringAsFixed(2)}');
            }),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            kerucutCount.resetTextFields();
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