import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Presentation/splash/presentation/views/splash_view.dart';

void main() {
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  Bookly({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    );
  }
}
