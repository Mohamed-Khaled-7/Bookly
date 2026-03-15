import 'package:flutter/material.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_vertical_card.dart';

class ListCardsVertical extends StatelessWidget {
  const ListCardsVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, _) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: CustomVerticalCard(),
        );
      },
      itemCount: 10,
    );
  }
}
