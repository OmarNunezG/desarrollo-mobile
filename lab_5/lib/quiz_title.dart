import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizTitle extends StatelessWidget {
  const QuizTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Learn Flutter The Fun Way',
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}
