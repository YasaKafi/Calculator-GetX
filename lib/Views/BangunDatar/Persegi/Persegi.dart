import 'package:calculator_getx/Routes/AppPages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'AllRumusPersegi.dart';

class PersegiPage extends StatelessWidget {
  const PersegiPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 335,
              color: Colors.green,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () =>
                          Get.offAndToNamed(Routes.BANGUN_DATAR_MENU),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 75),
                    child: const Text(
                      'Persegi',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, right: 8, left: 8, bottom: 20),
              child: Container(
                height: 200,
                width: 335,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    width: 4,
                  ),
                ),
                child: Image.asset('assets/square2.jpg'),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 30,
              width: 335,
              color: Colors.green,
              child: const Center(
                  child: Text(
                'Masukkan Angkanya!!',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, right: 8, left: 8, bottom: 0),
              child: Container(
                  width: 335,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 4,
                    ),
                  ),
                  child: AllRumusPersegi()),
            ),
          ],
        ),
      ),
    );
  }
}