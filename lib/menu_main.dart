import 'package:calculator_getx/Routes/AppPages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: mediaQueryWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('Main Menu',
                        style: GoogleFonts.poppins(
                            fontSize: 35, fontWeight: FontWeight.w600)),
                    margin: EdgeInsets.only(top: 30),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    height: 5,
                    width: mediaQueryWidth,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () => Get.offAndToNamed(Routes.BANGUN_DATAR_MENU),
              child: Container(
                // padding: EdgeInsets.all(20),
                width: 300,
                height: 200,
                child: Image.asset('assets/bangundatar.gif'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Get.offAndToNamed(Routes.BANGUN_RUANG_MENU),
              child: Container(
                width: 300,
                height: 200,
                child: Image.asset('assets/bangunruang.gif'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
