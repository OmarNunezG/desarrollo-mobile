import 'package:flutter/material.dart';
import 'package:lab_3/answer_button.dart';
import 'package:lab_3/question_text.dart';
import 'package:lab_3/score.dart';

import 'quiz_brain.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final QuizBrain _quizBrain = QuizBrain();
  final List<Icon> _scoreKeeper = [];

  int get _asserts {
    return _scoreKeeper.where((element) => element.icon == Icons.check).length;
  }

  void _resetScore() {
    setState(() {
      _quizBrain.reset();
      _scoreKeeper.clear();
    });
  }

  void _checkAnswer(bool userAnswer) {
    bool correctAnswer = _quizBrain.questionAnswer;

    setState(() {
      if (userAnswer == correctAnswer) {
        _scoreKeeper.add(const Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        _scoreKeeper.add(const Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      _quizBrain.nextQuestion();

      if (!_quizBrain.hasFinished) return;

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Quiz Finished'),
            content: Text('You scored $_asserts out of 10'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _resetScore();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
        barrierDismissible: false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Quiz App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: QuestionText(_quizBrain.questionText),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: AnswerButton(
                onPressed: () => _checkAnswer(true),
                text: 'True',
                backgroundColor: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: AnswerButton(
                onPressed: () => _checkAnswer(false),
                text: 'False',
                backgroundColor: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Score(
              scoreKeeper: _scoreKeeper,
            ),
          ),
        ],
      ),
    );
  }
}
