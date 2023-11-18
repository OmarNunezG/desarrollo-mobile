import 'package:flutter/material.dart';

class QuizLogo extends StatelessWidget {
  const QuizLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/quiz-logo.png',
      color: const Color.fromARGB(150, 255, 255, 255),
      width: 300,
    );
  }
}
