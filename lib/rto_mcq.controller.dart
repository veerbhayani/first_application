class Mcqs {
  static String ans1 = '',
      ans2 = '',
      ans3 = '',
      ans4 = '',
      ans5 = '',
      ans6 = '',
      ans7 = '',
      ans8 = '',
      ans9 = '',
      ans10 = '';
  static int points = 0;
  static bool isSubmited = false;

  static List<Map<String, dynamic>> data = [
    {
      'queNo': '(1). ',
      'que':
          'When are you allowed to drive even if your brake lights do not work?',
      'optionA': 'A. When there is no other vehicle on the road.',
      'optionB': 'B. When you are driving in a school zone.',
      'optionC': 'C. When you are driving in a residential area.',
      'optionD': 'D. Never.',
      'rightAns': 'D. Never.',
    },
    {
      'queNo': '(2). ',
      'que':
          'On a wet road what is the safest way to stop while driving a two wheeler?',
      'optionA': 'A. Apply the brakes suddenly.',
      'optionB': 'B. Apply the brakes gradually.',
      'optionC': 'C.Pump the brakes repeatedly.',
      'optionD': 'D. Use the rear brake only',
      'rightAns': 'D. Use the rear brake only',
    },
    {
      'queNo': '(3). ',
      'que':
          'Road surface is very important to motor cyclists. Which of these are more likely to reduce the stability of your machine?',
      'optionA': 'A. A smooth road surface.',
      'optionB': 'B. A road surface with potholes.',
      'optionC': 'C. A road surface with loose gravel.',
      'optionD': 'D. A road surface with sand.',
      'rightAns': 'C. A road surface with loose gravel.',
    },
    {
      'queNo': '(4). ',
      'que':
          'Which of the following is correct about validity of driving licence?',
      'optionA': 'A. Valid only in issued state.',
      'optionB': 'B. Valid in all states in India.',
      'optionC': 'C. Valid in all countries in the world.',
      'optionD': 'D. Valid for a period of 10 years.',
      'rightAns': 'B. Valid in all states in India.',
    },
    {
      'queNo': '(5). ',
      'que': 'What is the maximum speed limit for cars in a city?',
      'optionA': 'A. 50 kmph.',
      'optionB': 'B. 60 kmph.',
      'optionC': 'C. 70 kmph.',
      'optionD': 'D. 80 kmph.',
      'rightAns': 'A. 50 kmph.',
    },
    {
      'queNo': '(6). ',
      'que': 'What is the maximum speed limit in a residential area?',
      'optionA': 'A. 25 kmph.',
      'optionB': 'B. 35 kmph.',
      'optionC': 'C. 45 kmph.',
      'optionD': 'D. 55 kmph.',
      'rightAns': 'A. 25 kmph.',
    },
    {
      'queNo': '(7). ',
      'que':
          'What is the minimum distance you should stay behind a school bus when it is stopped with its red lights flashing?',
      'optionA': 'A. 10 feet',
      'optionB': 'B. 20 feet',
      'optionC': 'C. 30 feet',
      'optionD': 'D. 40 feet',
      'rightAns': 'C. 30 feet',
    },
    {
      'queNo': '(8). ',
      'que': 'When driving in a construction zone, you should:',
      'optionA': 'A. Slow down',
      'optionB': 'B. Be prepared to stop',
      'optionC': 'C. Obey the instructions of the workers',
      'optionD': 'D. All of the above',
      'rightAns': 'D. All of the above',
    },
    {
      'queNo': '(9). ',
      'que':
          'Which of the following is not a legal way to use a mobile phone while driving?',
      'optionA': 'A. Using a hands-free device.',
      'optionB': 'B. Using the phone to make a call.',
      'optionC': 'C. Using the phone to send a text message.',
      'optionD': 'D. Using the phone to check the GPS.',
      'rightAns': 'C. Using the phone to send a text message.',
    },
    {
      'queNo': '(10). ',
      'que': 'What is the purpose of wearing a seat belt?',
      'optionA':
          'A. To protect you from being ejected from the car in a crash.',
      'optionB': 'B. To reduce the severity of injuries in a crash.',
      'optionC':
          'C. To make it easier for the police to identify you if you are in a crash.',
      'optionD': 'D. All of the above.',
      'rightAns': 'D. All of the above.',
    },
  ];

  static void onSubmit() {
    (data[0]['rightAns'] == ans1) ? points += 5 : points -= 2;
    (data[0]['rightAns'] == ans2) ? points += 5 : points -= 2;
    (data[0]['rightAns'] == ans3) ? points += 5 : points -= 2;
    (data[0]['rightAns'] == ans4) ? points += 5 : points -= 2;
    (data[0]['rightAns'] == ans5) ? points += 5 : points -= 2;
    (data[0]['rightAns'] == ans6) ? points += 5 : points -= 2;
    (data[0]['rightAns'] == ans7) ? points += 5 : points -= 2;
    (data[0]['rightAns'] == ans8) ? points += 5 : points -= 2;
    (data[0]['rightAns'] == ans9) ? points += 5 : points -= 2;
    (data[0]['rightAns'] == ans10) ? points += 5 : points -= 2;
  }

  static clearAll() {
    if (isSubmited == false) {
      points = 0;
      ans1 = '';
      ans2 = '';
      ans3 = '';
      ans4 = '';
      ans5 = '';
      ans6 = '';
      ans7 = '';
      ans8 = '';
      ans9 = '';
      ans10 = '';
    }
  }
}
