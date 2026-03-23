import 'package:flutter/material.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_best_seller_card.dart';

class BestSellerCards extends StatelessWidget {
  const BestSellerCards({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const CustomBestSellerCard(),
        );
      },
      itemCount: 10,
    );
  }
}
