import 'package:flutter/material.dart';

import 'answers_list.dart';
import 'finished_dialog.dart';
import 'question_title.dart';
import 'quiz_brain.dart';
import 'start_screen.dart';

class QuizPage extends StatefulWidget {
  final void Function(Widget) _switchScreen;

  const QuizPage(void Function(Widget) switchScreen, {super.key})
      : _switchScreen = switchScreen;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late final QuizBrain _quizBrain;

  @override
  void initState() {
    _quizBrain = QuizBrain(_onFinish);
    super.initState();
  }

  void _restart() {
    setState(() {
      Navigator.of(context).pop();
      _quizBrain.reset();
      widget._switchScreen(StartScreen(widget._switchScreen));
    });
  }

  void _onFinish() {
    showDialog(
      context: context,
      builder: (context) => FinishedDialog(
        score: _quizBrain.asserts,
        total: _quizBrain.totalQuestions,
        onPressed: _restart,
      ),
      barrierDismissible: false,
    );
  }

  void _nextQuestion(String answer) {
    setState(() {
      _quizBrain.checkAnswer(answer);
      _quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            QuestionTitle(
              quizBrain: _quizBrain,
            ),
            const SizedBox(
              height: 50,
            ),
            AnswersList(
              onTap: _nextQuestion,
              children: _quizBrain.questionAnswersList,
            ),
          ],
        ),
      ),
    );
  }
}
