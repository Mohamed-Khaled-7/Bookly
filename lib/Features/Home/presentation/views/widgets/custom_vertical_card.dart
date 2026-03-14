import 'package:flutter/material.dart';
import 'package:project/core/utils/assets.dart';

class CustomVerticalCard extends StatelessWidget {
  const CustomVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Container(
        height: 113,
        width: 83,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsData.testImage)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
