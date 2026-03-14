import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:project/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(left: 26),
          child: Image.asset(AssetsData.logo, width: 110, height: 110),
        ),
        IconButton(
          onPressed: () {},
          icon: Padding(
            padding: EdgeInsetsGeometry.only(right: 13),
            child: Icon(LucideIcons.search, color: Colors.white, size: 29),
          ),
        ),
      ],
    );
  }
}
