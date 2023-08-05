
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

import 'Routes/AppPages.dart';

class BangunDatarMenu extends StatelessWidget {
  const BangunDatarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),

          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () =>
                    Get.offAndToNamed(Routes.MAIN_MENU),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          SizedBox(
            height: 60,
            width: mediaQueryWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bangun Datar',
                    style: GoogleFonts.poppins(
                        fontSize: 35, fontWeight: FontWeight.w600)),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  height: 5,
                  width: mediaQueryWidth,
                  color: Colors.black,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () => Get.offAndToNamed(Routes.PERSEGI_PAGE),
                        child: Container(
                          color: Colors.purple,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/square.svg',
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Persegi',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () => Get.offAndToNamed(Routes.SEGITIGA_PAGE),
                        child: Container(
                          color: Colors.orange,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/triangle2.svg'),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text('Segitiga',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      child: InkWell(

                        splashColor: Colors.grey,
                        onTap: () =>
                            Get.offAndToNamed(Routes.PERSEGI_PANJANG_PAGE),
                        child: Container(
                          color: Colors.green,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/rectangle3.svg',
                                    width: 130),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text('Persegi Panjang',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () => Get.offAndToNamed(Routes.JAJAR_GENJANG_PAGE),
                      child: Container(
                        color: Colors.red,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: SvgPicture.asset(
                                  'assets/parallelogram2.svg',
                                  width: 150,
                                  height: 60,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Jajar Genjang',
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () => Get.offAndToNamed(Routes.LINGKARAN_PAGE),
                      child: Container(
                        color: Colors.pink,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/circle2.svg',
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Lingkaran',
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () => Get.offAndToNamed(Routes.TRAPESIUM_PAGE),
                      child: Container(
                        color: Colors.blue,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/trapezoid2.svg',
                                width: 110,
                                height: 70,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Trapesium',
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
