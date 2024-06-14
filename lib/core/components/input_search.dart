import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputSerach extends StatelessWidget {
  const InputSerach({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xff3A3F47),
        hintStyle: GoogleFonts.poppins(color: const Color(0xff67686D)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        hintText: 'Search',
        suffixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
