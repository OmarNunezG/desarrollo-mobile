import 'package:flutter/material.dart';

import 'quiz_page.dart';

class StartButton extends StatelessWidget {
  const StartButton(void Function(Widget) startQuiz, {super.key})
      : _startQuiz = startQuiz;

  final void Function(Widget) _startQuiz;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      onPressed: () => _startQuiz(QuizPage(_startQuiz)),
      icon: const Icon(Icons.arrow_right_alt),
      label: const Text('Start'),
    );
  }
}
