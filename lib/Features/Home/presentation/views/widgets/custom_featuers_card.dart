import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/core/utils/app_routes.dart';
import 'package:project/core/utils/assets.dart';

class CustomFeatuersCard extends StatelessWidget {
  CustomFeatuersCard({super.key, required this.hight, required this.width});
  double hight;
  double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: Container(
        height: hight,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsData.testImage)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
