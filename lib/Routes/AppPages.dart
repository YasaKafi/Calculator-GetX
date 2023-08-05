import 'package:calculator_getx/Bindings/BangunDatarBindings/JajarGenjangBindings.dart';
import 'package:calculator_getx/Bindings/BangunDatarBindings/LingkaranBindings.dart';
import 'package:calculator_getx/Bindings/BangunDatarBindings/PersegiPanjangBindings.dart';
import 'package:calculator_getx/Bindings/BangunDatarBindings/SegitigaBindings.dart';
import 'package:calculator_getx/Bindings/BangunDatarBindings/TrapesiumBindings.dart';
import 'package:calculator_getx/Bindings/BangunRuangBindings/BalokBindings.dart';
import 'package:calculator_getx/Bindings/BangunRuangBindings/BolaBindings.dart';
import 'package:calculator_getx/Bindings/BangunRuangBindings/KerucutBindings.dart';
import 'package:calculator_getx/Bindings/BangunRuangBindings/PrismaBindings.dart';
import 'package:calculator_getx/Bindings/BangunRuangBindings/TabungBindings.dart';
import 'package:calculator_getx/Views/BangunRuang/Balok/Balok.dart';
import 'package:calculator_getx/Views/BangunRuang/Bola/Bola.dart';
import 'package:calculator_getx/Views/BangunRuang/Kerucut/Kerucut.dart';
import 'package:calculator_getx/Views/BangunRuang/Kubus/Kubus.dart';
import 'package:calculator_getx/Views/BangunRuang/Limas/Limas.dart';
import 'package:calculator_getx/Views/BangunRuang/Tabung/Tabung.dart';
import 'package:calculator_getx/bangun_datar_menu.dart';
import 'package:calculator_getx/bangun_ruang_menu.dart';
import 'package:calculator_getx/menu_main.dart';
import 'package:get/get.dart';

import '../Bindings/BangunDatarBindings/PersegiBindings.dart';
import '../Bindings/BangunRuangBindings/KubusBindings.dart';
import '../Bindings/BangunRuangBindings/LimasBindings.dart';
import '../Views/BangunDatar/JajarGenjang/JajarGenjang.dart';
import '../Views/BangunDatar/Lingkaran/Lingkaran.dart';
import '../Views/BangunDatar/Persegi/Persegi.dart';
import '../Views/BangunDatar/PersegiPanjang/PersegiPanjang.dart';
import '../Views/BangunDatar/Segitiga/Segitiga.dart';
import '../Views/BangunDatar/Trapesium/Trapesium.dart';
import '../Views/BangunRuang/Prisma/Prisma.dart';

part 'AppRoutes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_MENU;

  static final routes = [
    GetPage(
        name: _Paths.MAIN_MENU,
        page: () => const MainMenu(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.BANGUN_DATAR_MENU,
        page: () => const BangunDatarMenu(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.BANGUN_RUANG_MENU,
        page: () => const BangunRuangMenu(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.PERSEGI_PAGE,
        page: () =>  PersegiPage(),
        binding: PersegiBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.SEGITIGA_PAGE,
        page: () =>  SegitigaPage(),
        binding: SegitigaBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.PERSEGI_PANJANG_PAGE,
        page: () =>  PersegiPanjangPage(),
        binding: PersegiPanjangBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.JAJAR_GENJANG_PAGE,
        page: () =>  JajarGenjangPage(),
        binding: JajarGenjangBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.TRAPESIUM_PAGE,
        page: () =>  TrapesiumPage(),
        binding: TrapesiumBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.LINGKARAN_PAGE,
        page: () =>  LingkaranPage(),
        binding: LingkaranBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),

    /// Bangun Ruang

    GetPage(
        name: _Paths.BALOK_PAGE,
        page: () =>  BalokPage(),
        binding: BalokBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.KUBUS_PAGE,
        page: () =>  KubusPage(),
        binding: KubusBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.LIMAS_PAGE,
        page: () =>  LimasPage(),
        binding: LimasBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.KERUCUT_PAGE,
        page: () =>  KerucutPage(),
        binding: KerucutBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.TABUNG_PAGE,
        page: () =>  TabungPage(),
        binding: TabungBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.BOLA_PAGE,
        page: () =>  BolaPage(),
        binding: BolaBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
    GetPage(
        name: _Paths.PRISMA_PAGE,
        page: () =>  PrismaPage(),
        binding: PrismaBinding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 1500)
    ),
  ];
}
