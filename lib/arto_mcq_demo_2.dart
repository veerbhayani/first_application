import 'package:first_application/rto_mcq.controller.dart';
import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  const Demo2({super.key});

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Mcqs.data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Text(Mcqs.data[index]['queNo']),
                        SizedBox(
                          width: 430,
                          child: Text(
                            Mcqs.data[index]['que'],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: Mcqs.data[index]['optionA'],
                          groupValue: Mcqs.answers,
                          onChanged: (value) {
                            Mcqs.answers.add(value);
                            // Mcqs.isSelected[index] = true;
                            print(Mcqs.answers);
                            setState(() {});
                          },
                        ),
                        Text(
                          Mcqs.data[index]['optionA'].toString(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: Mcqs.data[index]['optionB'],
                          groupValue: Mcqs.answers,
                          onChanged: (value) {
                            Mcqs.answers.add(value);
                            // Mcqs.isSelected[index] = true;
                            print(Mcqs.answers);

                            setState(() {});
                          },
                        ),
                        Text(
                          Mcqs.data[index]['optionB'].toString(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: Mcqs.data[index]['optionC'],
                          groupValue: Mcqs.answers,
                          onChanged: (value) {
                            Mcqs.answers.add(value);

                            // Mcqs.isSelected[index] = true;
                            print(Mcqs.answers);

                            setState(() {});
                          },
                        ),
                        Text(
                          Mcqs.data[index]['optionC'].toString(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: Mcqs.data[index]['optionD'],
                          groupValue: Mcqs.answers,
                          onChanged: (value) {
                            Mcqs.answers.add(value);

                            // Mcqs.isSelected[index] = true;
                            print(Mcqs.answers);

                            setState(() {});
                          },
                        ),
                        Text(
                          Mcqs.data[index]['optionD'].toString(),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
