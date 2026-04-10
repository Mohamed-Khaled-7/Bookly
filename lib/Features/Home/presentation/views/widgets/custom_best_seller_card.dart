import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/core/utils/app_routes.dart';

class CustomBestSellerCard extends StatelessWidget {
  CustomBestSellerCard({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8, top: 1, right: 17),
          child: Row(
            children: [
              SizedBox(width: 24),
              SizedBox(
                height: 105,
                width: 70,
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(
                      context,
                    ).push(AppRoutes.kBookDetailsView, extra: bookModel);
                  },
                  child: CachedNetworkImage(
                    imageUrl:
                        bookModel.volumeInfo.imageLinks?.thumbnail ??
                        'https://dummyimage.com/600x400/000/fff&text=No+Image',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: 24),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      style: GoogleFonts.inter(fontSize: 18),
                      softWrap: true,
                    ),
                    SizedBox(height: 4),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text('Free', style: GoogleFonts.inter(fontSize: 20)),
                        Spacer(flex: 3),
                        Text(
                          '⭐ ${bookModel.volumeInfo.averageRating ?? 0}',
                          style: GoogleFonts.inter(fontSize: 16),
                        ),
                        SizedBox(width: 2.3),
                        Text(
                          '(${bookModel.volumeInfo.ratingsCount ?? 0})',
                          style: GoogleFonts.inter(color: Colors.grey),
                        ),
                        Spacer(flex: 2),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
