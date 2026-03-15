import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(left: 26),
          child: Icon(LucideIcons.x),
        ),
        IconButton(
          onPressed: () {},
          icon: Padding(
            padding: EdgeInsetsGeometry.only(right: 13),
            child: Icon(
              LucideIcons.shoppingCart,
              color: Colors.white,
              size: 29,
            ),
          ),
        ),
      ],
    );
  }
}
