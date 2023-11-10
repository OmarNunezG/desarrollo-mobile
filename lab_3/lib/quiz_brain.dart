import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  bool _hasFinished = false;

  final List<Question> _questionList = [
    Question('Linus Torvalds created Linux and Git.', true),
    Question(
        'The programming language "Python" is based off a modified version of "JavaScript".',
        false),
    Question('The logo for Snapchat is a Bell.', false),
    Question('RAM stands for Random Access Memory.', true),
    Question('HTML is a programming language.', false),
    Question(
        'In most programming languages, the operator ++ is equivalent to the statement += 1.',
        true),
    Question('The Windows 7 operating system has six main editions.', true),
    Question(
        'The Windows ME operating system was released in the year 2000.', true),
    Question(
        'The NVidia GTX 1080 gets its name because it can only render at a 1920x1080 screen resolution.',
        false),
    Question('Linux was first created as an alternative to Windows XP.', false),
  ];

  String get questionText => _questionList[_questionNumber].question;
  bool get questionAnswer => _questionList[_questionNumber].answer;
  bool get hasFinished => _hasFinished;

  QuizBrain() {
    _questionList.shuffle();
  }

  void reset() {
    _questionNumber = 0;
    _questionList.shuffle();
    _hasFinished = false;
  }

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
      return;
    }

    _hasFinished = true;
  }
}
