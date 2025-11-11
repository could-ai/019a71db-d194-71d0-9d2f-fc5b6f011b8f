class Question {
  final String question;
  final Map<String, String> options;
  final String correctAnswer;
  final String explanation;
  final String category;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
    required this.category,
  });
}
