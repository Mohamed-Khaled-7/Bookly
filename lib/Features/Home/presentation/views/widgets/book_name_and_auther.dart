import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';

class BookNameAndAuther extends StatelessWidget {
  BookNameAndAuther({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 23),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            bookModel.volumeInfo.title!,
            style: GoogleFonts.inter(fontSize: 30, color: Colors.white),
          ),
        ),
        SizedBox(height: 5),
        Text(
          bookModel.volumeInfo.authors![0],
          style: GoogleFonts.inter(fontSize: 18),
        ),
        SizedBox(height: 9),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('⭐ 4.8', style: GoogleFonts.poppins()),
            SizedBox(width: 4),
            Text(
              '(109)',
              style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
      ],
    );
  }
}
