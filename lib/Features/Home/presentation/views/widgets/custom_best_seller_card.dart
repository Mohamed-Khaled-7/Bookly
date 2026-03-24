import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/core/utils/app_routes.dart';
import 'package:project/core/utils/assets.dart';

class CustomBestSellerCard extends StatelessWidget {
   CustomBestSellerCard({super.key,required this.bookModel,required this.i});
  BookModel bookModel;
  int i;
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
                    Future.delayed(
                      Duration.zero,
                      () =>
                          GoRouter.of(context).push(AppRoutes.kBookDetailsView),
                    );
                  },
                  child: Image.asset(bookModel.volumeInfo!.imageLinks!.thumbnail!),
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
                      bookModel.volumeInfo!.title!,
                      maxLines: 2,
                      style: GoogleFonts.inter(fontSize: 20),
                      softWrap: true,
                    ),
                    SizedBox(height: 4),
                    Text(
                      bookModel.volumeInfo!.authors![0],
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text( 'Free', style: GoogleFonts.inter(fontSize: 20)),
                        Spacer(flex: 3),
                        Text('⭐ ${bookModel.volumeInfo!.maturityRating}', style: GoogleFonts.inter(fontSize: 20)),
                        SizedBox(width: 2.3),
                        Text(
                          '212',
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
