import 'data/questions.dart';
import 'models/quiz_model.dart';

class QuizBrain {
  int _questionNumber = 0;

  int _asserts = 0;

  final void Function() _onFinish;

  final List<QuizModel> _questionList = List.of(questions);

  int get asserts => _asserts;

  int get totalQuestions => _questionList.length;

  QuizModel get currentQuestion => _questionList[_questionNumber];

  List<String> get questionAnswersList => _getShuffledAnswers();

  String get questionAnswer => currentQuestion.answers.first;

  bool get hasFinished => !(_questionNumber < _questionList.length - 1);

  QuizBrain(void Function() onFinish) : _onFinish = onFinish;

  List<String> _getShuffledAnswers() {
    final shuffledList = List.of(currentQuestion.answers);
    shuffledList.shuffle();
    return shuffledList;
  }

  void reset() {
    _asserts = 0;
    _questionNumber = 0;
    _questionList.shuffle();
  }

  void checkAnswer(String answer) {
    if (questionAnswer != answer) return;

    _asserts++;
  }

  void nextQuestion() {
    if (!hasFinished) {
      _questionNumber++;
      return;
    }

    _onFinish();
  }
}
