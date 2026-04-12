import 'package:flutter/material.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/Features/Home/presentation/views/widgets/also_like.dart';
import 'package:project/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:project/Features/Home/presentation/views/widgets/book_name_and_auther.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:project/Features/Home/presentation/views/widgets/custom_price_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  BookDetailsViewBody({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomDetailsAppBar(),
              SizedBox(height: 10),
              BookImage(
                imageUrl:
                    bookModel.volumeInfo.imageLinks?.thumbnail ??
                    'https://dummyimage.com/600x400/000/fff&text=No+Image',
              ),
              BookNameAndAuther(bookModel: bookModel),
              ButtonPrice(),
              AlsoLike(),
            ],
          ),
        ),
      ],
    );
  }
}
