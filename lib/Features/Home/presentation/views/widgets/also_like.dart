import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_horizontal_card.dart';

class AlsoLike extends StatelessWidget {
  const AlsoLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(right: 255),
          child: Text(
            'You can also like',
            style: GoogleFonts.inter(fontSize: 14),
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: double.infinity,
          height: 117,
          child: Padding(
            padding: const EdgeInsets.only(left: 17),
            child: AlsoLikeList(),
          ),
        ),
      ],
    );
  }
}

class AlsoLikeList extends StatelessWidget {
  const AlsoLikeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomHorizontalCard(hight: 133, width: 70),
        );
      },
      itemCount: 10,
    );
  }
}
