import 'package:calculator_getx/Routes/AppPages.dart';
import 'package:calculator_getx/menu_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,



    );
  }
}

