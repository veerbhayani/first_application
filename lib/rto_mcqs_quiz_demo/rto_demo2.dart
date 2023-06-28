import 'package:first_application/raw_data/rto.raw.data.dart';
import 'package:flutter/material.dart';

import 'mcq_model.dart';
import 'rto_mcq.controller2.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  QuizPageState createState() => QuizPageState();
}

List<Mcq> mcqDetails = [];

class QuizPageState extends State<QuizPage> {
  bool isDarkMode = false;

  @override
  void initState() {
    print('Called First');
    for (var element in mcqData) {
      mcqDetails.add(Mcq.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Called Second');

    return Theme(
      data: ThemeData(
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('RTO MCQs Quiz'),
          actions: [
            IconButton(
              onPressed: () {
                isDarkMode = !isDarkMode;
                setState(() {});
              },
              icon: Icon(
                isDarkMode ? Icons.dark_mode : Icons.light_mode,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  scrollbars: false,
                  overscroll: false,
                  physics: const BouncingScrollPhysics(),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  primary: true,
                  itemCount: mcqDetails.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(
                        15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Q${index + 1}: ${mcqDetails[index].question}',
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
                              mcqDetails[index].options!.length,
                              (optionIndex) {
                                return Row(
                                  children: [
                                    Radio(
                                      value: optionIndex,
                                      groupValue:
                                          QuizQuestion.userAnswers[index],
                                      onChanged: (value) {
                                        QuizQuestion.userAnswers[index] =
                                            value!;
                                        QuizQuestion.isSelected[index] = true;
                                        setState(() {});
                                      },
                                    ),
                                    SizedBox(
                                      width: 280,
                                      child: Text(
                                        mcqDetails[index].options![optionIndex],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
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
            ),
            QuizQuestion.isSelectedAll == true
                ? MaterialButton(
                    onPressed: () {
                      QuizQuestion.isCorrect;

                      QuizQuestion.isSubmited = !QuizQuestion.isSubmited;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Your Score is ${QuizQuestion.points}',
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          showCloseIcon: true,
                          backgroundColor:
                              isDarkMode ? Colors.black : Colors.white,
                          onVisible: () {
                            QuizQuestion.onSubmit;
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
      ),
    );
  }
}
