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
      child: Container(
        height: 224,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(bookModel.volumeInfo.imageLinks!.thumbnail!),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
