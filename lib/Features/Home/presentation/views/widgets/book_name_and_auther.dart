import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookNameAndAuther extends StatelessWidget {
  const BookNameAndAuther({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 23),
        Text(
          'The Jungle Book',
          style: GoogleFonts.inter(fontSize: 30, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text('Rudyard Kipling', style: GoogleFonts.inter(fontSize: 18)),
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
