import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextMontserrat extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final FontWeight? weight;
  final int? color;

  const TextMontserrat(
      {super.key, this.fontSize, this.weight, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      // overflow: TextOverflow.ellipsis,
      //       maxLines: 1,
      //       softWrap: false,
      text ?? '',
      style: GoogleFonts.montserrat(
          fontSize: fontSize, fontWeight: weight, color: Color(color!)),
    );
  }
}
