import 'package:calculator_getx/Controllers/BangunRuangControllers/BalokController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllRumusBalok extends StatelessWidget {
  final balokCount = Get.find<BalokController>();

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
            controller: balokCount.panjangBalok,
            decoration: const InputDecoration(
              labelText: 'Masukkan Panjang',
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
            controller: balokCount.lebarBalok,
            decoration: const InputDecoration(
              labelText: 'Masukkan Lebar',
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
            controller: balokCount.tinggiBalok,
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
                if (balokCount.panjangBalok.text.isEmpty ||balokCount.lebarBalok.text.isEmpty || balokCount.tinggiBalok.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  balokCount.findVolume();

                }
              },
              child: const Text('Hitung Volume'),
            ),
            ElevatedButton(
              onPressed: () {
                if (balokCount.panjangBalok.text.isEmpty ||balokCount.lebarBalok.text.isEmpty || balokCount.tinggiBalok.text.isEmpty) {
                  showEmptyFieldSnackbar();
                } else {
                  balokCount.findLuasPermukaan();

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
              return Text('Volume Balok : ${balokCount.hasilVolume.toStringAsFixed(2)}');
            }),
            Obx(() {
              return Text('Luas Permukaan Balok : ${balokCount.hasilLuasPermukaan.toStringAsFixed(2)}');
            }),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            balokCount.resetTextFields();
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