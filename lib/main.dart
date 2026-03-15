import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Features/Splash/Presentation/views/splash_view.dart';
import 'package:project/constant.dart';

void main() {
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kColor,
        textTheme: GoogleFonts.momoTrustDisplayTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      home: SplashView(),
    );
  }
}
