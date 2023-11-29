import 'package:flutter/material.dart';
import 'package:lab_5/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required void Function() startQuiz,
    required List<String> choosenAnswers,
  })  : _startQuiz = startQuiz,
        _choosenAnswers = choosenAnswers;

  final Function() _startQuiz;
  final List<String> _choosenAnswers;

  List<Map<String, Object>> _getSummary() {
    final List<Map<String, Object>> summary = List.empty();
    for (var i = 0; i < _choosenAnswers.length; i++) {
      summary.add({
        'question_number': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': _choosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = _getSummary();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData
        .where((element) => element['user_answer'] == element['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'You answered $numCorrectAnswers of $numTotalQuestions questions correctly!'),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: _startQuiz,
            label: const Text('Restart Quiz'),
            icon: const Icon(Icons.restart_alt),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
