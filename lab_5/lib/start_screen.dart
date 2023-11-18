import 'package:flutter/material.dart';

import 'quiz_logo.dart';
import 'quiz_title.dart';
import 'start_button.dart';

class StartScreen extends StatelessWidget {
  final void Function(Widget) _startQuiz;

  const StartScreen(void Function(Widget) startQuiz, {super.key})
      : _startQuiz = startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const QuizLogo(),
          const SizedBox(
            height: 80,
          ),
          const QuizTitle(),
          const SizedBox(
            height: 30,
          ),
          StartButton(_startQuiz),
        ],
      ),
    );
  }
}
