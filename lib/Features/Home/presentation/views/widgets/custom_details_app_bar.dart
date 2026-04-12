import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:project/core/utils/app_routes.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(left: 26),
          child: IconButton(
            icon: Icon(LucideIcons.x),
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRoutes.kHomeView);
              ();
            },
          ),
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
