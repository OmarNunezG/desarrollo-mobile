import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constats.dart';

class StartScreen extends StatelessWidget {
  final void Function() _startQuiz;

  const StartScreen(startQuiz, {super.key}) : _startQuiz = startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: kContainerStyle,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              color: const Color.fromARGB(150, 255, 255, 255),
              width: 300,
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Learn Flutter The Fun Way',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: _startQuiz,
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
