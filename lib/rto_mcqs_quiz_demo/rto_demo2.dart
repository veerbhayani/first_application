import 'package:flutter/material.dart';

import 'rto_mcq.controller2.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  QuizPageState createState() => QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RTO MCQs Quiz'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              primary: true,
              itemCount: QuizQuestion.quizQuestions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Q${index + 1}: ${QuizQuestion.quizQuestions[index].question}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: List.generate(
                          QuizQuestion.quizQuestions[index].options.length,
                          (optionIndex) {
                            return Row(
                              children: [
                                Radio(
                                  value: optionIndex,
                                  groupValue: QuizQuestion.userAnswers[index],
                                  onChanged: (value) {
                                    QuizQuestion.userAnswers[index] = value!;
                                    QuizQuestion.isSelected[index] = true;
                                    setState(() {});
                                  },
                                ),
                                Text(
                                  QuizQuestion.quizQuestions[index]
                                      .options[optionIndex],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          (QuizQuestion.isSelected[0] == true &&
                  QuizQuestion.isSelected[1] == true &&
                  QuizQuestion.isSelected[2] == true &&
                  QuizQuestion.isSelected[3] == true &&
                  QuizQuestion.isSelected[4] == true &&
                  QuizQuestion.isSelected[5] == true &&
                  QuizQuestion.isSelected[6] == true &&
                  QuizQuestion.isSelected[7] == true &&
                  QuizQuestion.isSelected[8] == true &&
                  QuizQuestion.isSelected[9] == true)
              ? MaterialButton(
                  onPressed: () {
                    QuizQuestion.isCorrect();

                    QuizQuestion.isSubmited = !QuizQuestion.isSubmited;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Your Score is ${QuizQuestion.points}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        showCloseIcon: true,
                        backgroundColor: Colors.white,
                        onVisible: () {
                          QuizQuestion.onSubmit();
                          setState(() {});
                        },
                      ),
                    );
                    setState(() {});
                  },
                  color: Colors.blue,
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
