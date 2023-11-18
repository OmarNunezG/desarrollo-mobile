import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_5/quiz_brain.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle({
    super.key,
    required QuizBrain quizBrain,
  }) : _quizBrain = quizBrain;

  final QuizBrain _quizBrain;

  @override
  Widget build(BuildContext context) {
    return Text(
      _quizBrain.currentQuestion.question,
      style: GoogleFonts.lato(
        fontSize: 24,
        color: const Color.fromARGB(255, 201, 153, 251),
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
