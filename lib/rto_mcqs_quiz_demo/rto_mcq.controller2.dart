class QuizQuestion {
  final String question;
  final List<String> options;
  final int answerIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.answerIndex,
  });
  static List<int> userAnswers = List.filled(10, -1);
  static List isSelected = List.generate(10, (index) => false);
  static int points = 0;
  static bool isSubmited = false;

  static List<QuizQuestion> quizQuestions = [
    QuizQuestion(
      question:
          'When are you allowed to drive even if your brake lights do not work?',
      options: [
        'A. When there is no other vehicle on the road.',
        'B. When you are driving in a school zone.',
        'C. When you are driving in a residential area.',
        'D. Never.'
      ],
      answerIndex: 3,
    ),
    QuizQuestion(
      question:
          'On a wet road what is the safest way to stop while driving a two wheeler?',
      options: [
        'A. Apply the brakes suddenly.',
        'B. Apply the brakes gradually.',
        'C.Pump the brakes repeatedly.',
        'D. Use the rear brake only',
      ],
      answerIndex: 3,
    ),
    QuizQuestion(
      question:
          'Road surface is very important to motor cyclists. Which of these are more likely to reduce the stability of your machine?',
      options: [
        'A. A smooth road surface.',
        'B. A road surface with potholes.',
        'C. A road surface with loose gravel.',
        'D. A road surface with sand.',
      ],
      answerIndex: 2,
    ),
    QuizQuestion(
      question:
          'Which of the following is correct about validity of driving licence?',
      options: [
        'A. Valid only in issued state.',
        'B. Valid in all states in India.',
        'C. Valid in all countries in the world.',
        'D. Valid for a period of 10 years.',
      ],
      answerIndex: 1,
    ),
    QuizQuestion(
      question: 'What is the maximum speed limit for cars in a city?',
      options: [
        'A. 50 kmph.',
        'B. 60 kmph.',
        'C. 70 kmph.',
        'D. 80 kmph.',
      ],
      answerIndex: 0,
    ),
    QuizQuestion(
      question: 'What is the maximum speed limit in a residential area?',
      options: [
        'A. 25 kmph.',
        'B. 35 kmph.',
        'C. 45 kmph.',
        'D. 55 kmph.',
      ],
      answerIndex: 0,
    ),
    QuizQuestion(
      question:
          'What is the minimum distance you should stay behind a school bus when it is stopped with its red lights flashing?',
      options: [
        'A. 10 feet',
        'B. 20 feet',
        'C. 30 feet',
        'D. 40 feet',
      ],
      answerIndex: 2,
    ),
    QuizQuestion(
      question: 'When driving in a construction zone, you should:',
      options: [
        'A. Slow down',
        'B. Be prepared to stop',
        'C. Obey the instructions of the workers',
        'D. All of the above',
      ],
      answerIndex: 3,
    ),
    QuizQuestion(
      question:
          'Which of the following is not a legal way to use a mobile phone while driving?',
      options: [
        'A. Using a hands-free device.',
        'B. Using the phone to make a call.',
        'C. Using the phone to send a text message.',
        'D. Using the phone to check the GPS.',
      ],
      answerIndex: 2,
    ),
    QuizQuestion(
      question: 'What is the purpose of wearing a seat belt?',
      options: [
        'A. To protect you from being ejected from the car in a crash.',
        'B. To reduce the severity of injuries in a crash.',
        'C. To make it easier for the police to identify you if you are in a crash.',
        'D. All of the above.',
      ],
      answerIndex: 3,
    ),
  ];

  static void isCorrect() {
    for (int i = 0; i < QuizQuestion.quizQuestions.length; i++) {
      if (QuizQuestion.userAnswers[i] ==
          QuizQuestion.quizQuestions[i].answerIndex) {
        QuizQuestion.points += 5;
      } else {
        QuizQuestion.points -= 2;
      }
    }
  }

  static void onSubmit() {
    if (isSubmited == true) {
      userAnswers = List.filled(10, -1);
      isSelected = List.generate(10, (index) => false);
      points = 0;
      isSubmited = false;
    }
  }
}
