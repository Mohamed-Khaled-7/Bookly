import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_seaech_delegated.dart';
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              showSearch(context: context, delegate: OnSearchDelegated());
            },
            icon: Icon(LucideIcons.search),
            color: Colors.white,
            style: ButtonStyle(iconSize: WidgetStatePropertyAll(29)),
          ),
        ),
      ],
    );
  }
}
