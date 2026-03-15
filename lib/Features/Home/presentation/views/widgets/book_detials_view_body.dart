import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Features/Home/presentation/views/widgets/book_name_and_auther.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:project/core/utils/assets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        CustomDetailsAppBar(),
        SizedBox(height: 20),
        BookImage(),
        BookNameAndAuther(),
      ],
    );
  }
}

class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 243,
        width: 162,
        child: Image.asset(AssetsData.testImage),
      ),
    );
  }
}

