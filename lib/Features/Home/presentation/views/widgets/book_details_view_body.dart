import 'package:flutter/material.dart';
import 'package:project/Features/Home/presentation/views/widgets/also_like.dart';
import 'package:project/Features/Home/presentation/views/widgets/book_name_and_auther.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_price_button.dart';
import 'package:project/core/utils/assets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBox(height: 40),
              CustomDetailsAppBar(),
              SizedBox(height: 20),
              BookImage(),
              BookNameAndAuther(),
              ButtonPrice(),
              AlsoLike(),
            ],
          ),
        ),
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
        child: Image.network(),
      ),
    );
  }
}
