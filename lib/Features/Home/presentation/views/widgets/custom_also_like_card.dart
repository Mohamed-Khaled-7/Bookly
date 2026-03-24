import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/utils/app_routes.dart';
import 'package:project/core/utils/assets.dart';

class CustomAlsoLikeCard extends StatelessWidget {
  const CustomAlsoLikeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: Container(
        height: 130,
        width: 70,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsData.testImage)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
