import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomError extends StatelessWidget {
   const CustomError({super.key, this.errMessage});
 final errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage,style: GoogleFonts.poppins(fontSize: 23),);
  }
}
