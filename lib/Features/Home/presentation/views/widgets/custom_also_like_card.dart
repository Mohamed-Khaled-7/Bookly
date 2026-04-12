import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/core/utils/app_routes.dart';

class CustomAlsoLikeCard extends StatelessWidget {
  CustomAlsoLikeCard({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(
          context,
        ).pushReplacement(AppRoutes.kBookDetailsView, extra: bookModel);
      },
      child: CachedNetworkImage(
        imageUrl:
            bookModel.volumeInfo.imageLinks?.thumbnail ??
            'https://dummyimage.com/600x400/000/fff&text=No+Image',
        fit: BoxFit.fill,
      ),
    );
  }
}
