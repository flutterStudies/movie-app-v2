import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextPoppins extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final FontWeight? weight;
  final int? color;

  const TextPoppins(
      {super.key, this.fontSize, this.weight, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: GoogleFonts.poppins(
          fontSize: fontSize, fontWeight: weight, color: Color(color!)),
    );
  }
}
