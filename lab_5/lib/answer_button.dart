import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  final String _text;
  final void Function() _onTap;

  const AnswerButton({
    super.key,
    required String text,
    required void Function() onTap,
  })  : _onTap = onTap,
        _text = text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        backgroundColor: const Color.fromARGB(255, 23, 1, 95),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: _onTap,
      child: Text(
        _text,
        style: GoogleFonts.lato(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
