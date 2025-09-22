// import 'package:ecommerce_mobile/fitures/home/screen/detail_screen.dart';

import 'package:ecommerce_mobile/fitures/home/screen/detail_screen.dart';
import 'package:ecommerce_mobile/fitures/splash/splash_screen.dart';
import 'package:ecommerce_mobile/preference/color.dart';

// import 'package:ecommerce_mobile/fitures/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        fontFamily: "Josefin Sans",
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Color(0Xfff3f1f1),
          hintStyle: TextStyle(color: Color(0xffC2BDBD)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20),
            backgroundColor: Color.fromARGB(255, 41, 41, 41),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 45, 45, 45),
          centerTitle: true,
          toolbarHeight: 100,
          leadingWidth: 110,
          surfaceTintColor: MainColors.primaryColor,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
