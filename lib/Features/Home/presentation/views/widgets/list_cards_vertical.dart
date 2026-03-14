import 'package:flutter/material.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_headers.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_vertical_card.dart';

class ListCardsVertical extends StatelessWidget {
  const ListCardsVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(title: 'Best Seller'),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 23, top: 12),
                child: CustomVerticalCard(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
