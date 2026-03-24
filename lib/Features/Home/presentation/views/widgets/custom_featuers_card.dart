import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/core/utils/app_routes.dart';

class CustomFeatuersCard extends StatelessWidget {
  CustomFeatuersCard({super.key, required this.bookModel});
  BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView, extra: bookModel);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          imageUrl:
              bookModel.volumeInfo.imageLinks?.thumbnail ??
              'https://placehold.co/150x220?text=No+Image',
          fit: BoxFit.cover,
          errorWidget: (context, url, error) =>
              Image.network('https://placehold.co/150x220?text=Error'),
        ),
      ),
    );
  }
}
