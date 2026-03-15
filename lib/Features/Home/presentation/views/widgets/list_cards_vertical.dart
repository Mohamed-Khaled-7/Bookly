import 'package:flutter/material.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_vertical_card.dart';

class ListCardsVertical extends StatelessWidget {
  const ListCardsVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const CustomVerticalCard(),
        );
      },
      itemCount: 10,
    );
  }
}
