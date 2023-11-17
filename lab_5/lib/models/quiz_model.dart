class QuizModel {
  String question;
  List<String> answers = [];

  QuizModel(this.question, this.answers);

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
