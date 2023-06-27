import 'package:first_application/rto_mcqs_quiz_demo/rto_demo2.dart';

class QuizQuestion {
  final String question;
  final List<String> options;
  final int answerIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.answerIndex,
  });
  static List<int> userAnswers = List.filled(mcqDetails.length, -1);
  static List isSelected = List.generate(10, (index) => false);
  static int points = 0;
  static bool isSubmited = false;

  static void get isCorrect {
    for (int i = 0; i < mcqDetails.length; i++) {
      if (QuizQuestion.userAnswers[i] == mcqDetails[i].answerIndex) {
        QuizQuestion.points += 5;
      } else {
        QuizQuestion.points -= 2;
      }
    }
  }

  static void get onSubmit {
    if (isSubmited == true) {
      userAnswers = List.filled(10, -1);
      isSelected = List.generate(10, (index) => false);
      points = 0;
      isSubmited = false;
    }
  }

  static bool get isSelectedAll {
    bool? val;
    for (var element in isSelected) {
      if (element == true) {
        val = true;
      } else {
        val = false;
        break;
      }
    }
    return val!;
  }
}
