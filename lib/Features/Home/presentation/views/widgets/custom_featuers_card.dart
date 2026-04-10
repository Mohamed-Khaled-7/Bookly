import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/core/utils/app_routes.dart';

class CustomFeatuersCard extends StatelessWidget {
  const CustomFeatuersCard({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView, extra: bookModel);
      },
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl:
                bookModel.volumeInfo.imageLinks?.thumbnail ??
                'https://dummyimage.com/600x400/000/fff&text=No+Image',
            errorWidget: (context, url, error) => Container(
              color: Colors.grey[900],
              child: const Icon(
                Icons.broken_image_outlined,
                color: Colors.white54,
                size: 32,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
