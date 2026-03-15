import 'package:flutter/material.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_headers.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_vertical_card.dart';

class ListCardsVertical extends StatelessWidget {
  const ListCardsVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(child: CustomHeader(title: 'Best Seller')),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 2, top: 12),
                child: CustomVerticalCard(),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SMK DNJCNJD KDCJCN DNCJNDC',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
