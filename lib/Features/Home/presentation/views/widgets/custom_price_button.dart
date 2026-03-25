import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPrice extends StatelessWidget {
  const ButtonPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child:Center(
              child: Text(
                'Free',
                style: GoogleFonts.inter(color: Colors.black, fontSize: 18),
              ),
            ),
            width: 150,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(17),
                bottomLeft: Radius.circular(17),
              ),
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap:(){},
            child: Container(
              child: Center(
                child: Text(
                  "Free Preview",
                  style: GoogleFonts.inter(color: Colors.white, fontSize: 16),
                ),
              ),
              width: 150,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(17),
                  bottomRight: Radius.circular(17),
                ),
                color: Color(0xffEF8262),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
