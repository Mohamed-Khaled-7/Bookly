import 'package:flutter/material.dart';
import 'package:project/core/utils/assets.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AssetsData.testImage)),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
