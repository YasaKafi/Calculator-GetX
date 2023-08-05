
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

import 'Routes/AppPages.dart';

class BangunRuangMenu extends StatelessWidget {
  const BangunRuangMenu({super.key});

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
            height: 100,
            width: mediaQueryWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bangun Ruang',
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
                        onTap: () => Get.offAndToNamed(Routes.KUBUS_PAGE),
                        child: Container(
                          color: Colors.purple,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/cube.svg',

                                  width: 90,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Kubus',
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
                        onTap: () => Get.offAndToNamed(Routes.BALOK_PAGE),
                        child: Container(
                          color: Colors.orange,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/cuboid.svg', width: 120,),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Balok',
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
                            Get.offAndToNamed(Routes.LIMAS_PAGE),
                        child: Container(
                          color: Colors.green,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/pyramid.svg',
                                    width: 100),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Limas',
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
                      onTap: () => Get.offAndToNamed(Routes.PRISMA_PAGE),
                      child: Container(
                        color: Colors.red,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: SvgPicture.asset(
                                  'assets/pentagonal.svg',
                                  width: 90,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Prisma',
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
                      onTap: () => Get.offAndToNamed(Routes.KERUCUT_PAGE),
                      child: Container(
                        color: Colors.pink,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/cone.svg',
                                width: 80,
                                height: 90,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Kerucut',
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
                      onTap: () => Get.offAndToNamed(Routes.BOLA_PAGE),
                      child: Container(
                        color: Colors.blue,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/sphere.svg',
                                width: 110,
                                height: 80,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Bola',
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
                      onTap: () => Get.offAndToNamed(Routes.TABUNG_PAGE),
                      child: Container(
                        color: Colors.cyan,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/cylinder.svg',
                                width: 90,
                                height: 90,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Tabung',
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

                      child: Container(

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
