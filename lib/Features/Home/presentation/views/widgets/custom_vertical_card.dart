import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/core/utils/assets.dart';

class CustomVerticalCard extends StatelessWidget {
  const CustomVerticalCard({super.key});
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
                child: Image.asset(AssetsData.testImage),
              ),
              SizedBox(width: 24),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      'The Jungle Book',
                      maxLines: 2,
                      style: GoogleFonts.inter(fontSize: 20),
                      softWrap: true,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Rudyard Kipling',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text('500 \$', style: GoogleFonts.inter(fontSize: 20)),
                        Spacer(flex: 3),
                        Text('⭐ 4.8'),
                        SizedBox(width: 2.3),
                        Text(
                          '(321)',
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
