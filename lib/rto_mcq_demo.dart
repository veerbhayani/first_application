import 'package:first_application/rto_mcq.controller.dart';
import 'package:flutter/material.dart';

class RtoMcqDemo extends StatefulWidget {
  const RtoMcqDemo({super.key});

  @override
  State<RtoMcqDemo> createState() => _RtoMcqDemoState();
}

class _RtoMcqDemoState extends State<RtoMcqDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              'MCQS Test',
              style: TextStyle(
                fontFamily: 'Dancing Script',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[0]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[0]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[0]['optionA'],
                            groupValue: Mcqs.ans1,
                            onChanged: (value) {
                              Mcqs.ans1 = Mcqs.data[0]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[0]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[0]['optionB'],
                            groupValue: Mcqs.ans1,
                            onChanged: (value) {
                              Mcqs.ans1 = Mcqs.data[0]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[0]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[0]['optionC'],
                            groupValue: Mcqs.ans1,
                            onChanged: (value) {
                              Mcqs.ans1 = Mcqs.data[0]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[0]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[0]['optionD'],
                            groupValue: Mcqs.ans1,
                            onChanged: (value) {
                              Mcqs.ans1 = Mcqs.data[0]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[0]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[1]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[1]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[1]['optionA'],
                            groupValue: Mcqs.ans2,
                            onChanged: (value) {
                              Mcqs.ans2 = Mcqs.data[1]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[1]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[1]['optionB'],
                            groupValue: Mcqs.ans2,
                            onChanged: (value) {
                              Mcqs.ans2 = Mcqs.data[1]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[1]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[1]['optionC'],
                            groupValue: Mcqs.ans2,
                            onChanged: (value) {
                              Mcqs.ans2 = Mcqs.data[1]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[1]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[1]['optionD'],
                            groupValue: Mcqs.ans2,
                            onChanged: (value) {
                              Mcqs.ans2 = Mcqs.data[1]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[1]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[2]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[2]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[2]['optionA'],
                            groupValue: Mcqs.ans3,
                            onChanged: (value) {
                              Mcqs.ans3 = Mcqs.data[2]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[2]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[2]['optionB'],
                            groupValue: Mcqs.ans3,
                            onChanged: (value) {
                              Mcqs.ans3 = Mcqs.data[2]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[2]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[2]['optionC'],
                            groupValue: Mcqs.ans3,
                            onChanged: (value) {
                              Mcqs.ans3 = Mcqs.data[2]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[2]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[2]['optionD'],
                            groupValue: Mcqs.ans3,
                            onChanged: (value) {
                              Mcqs.ans3 = Mcqs.data[2]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[2]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[3]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[3]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[3]['optionA'],
                            groupValue: Mcqs.ans4,
                            onChanged: (value) {
                              Mcqs.ans4 = Mcqs.data[3]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[3]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[3]['optionB'],
                            groupValue: Mcqs.ans4,
                            onChanged: (value) {
                              Mcqs.ans4 = Mcqs.data[3]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[3]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[3]['optionC'],
                            groupValue: Mcqs.ans4,
                            onChanged: (value) {
                              Mcqs.ans4 = Mcqs.data[3]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[3]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[3]['optionD'],
                            groupValue: Mcqs.ans4,
                            onChanged: (value) {
                              Mcqs.ans4 = Mcqs.data[3]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[3]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[4]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[4]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[4]['optionA'],
                            groupValue: Mcqs.ans5,
                            onChanged: (value) {
                              Mcqs.ans5 = Mcqs.data[4]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[4]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[4]['optionB'],
                            groupValue: Mcqs.ans5,
                            onChanged: (value) {
                              Mcqs.ans5 = Mcqs.data[4]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[4]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[4]['optionC'],
                            groupValue: Mcqs.ans5,
                            onChanged: (value) {
                              Mcqs.ans5 = Mcqs.data[4]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[4]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[4]['optionD'],
                            groupValue: Mcqs.ans5,
                            onChanged: (value) {
                              Mcqs.ans5 = Mcqs.data[4]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[4]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[5]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[5]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[5]['optionA'],
                            groupValue: Mcqs.ans6,
                            onChanged: (value) {
                              Mcqs.ans6 = Mcqs.data[5]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[5]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[5]['optionB'],
                            groupValue: Mcqs.ans6,
                            onChanged: (value) {
                              Mcqs.ans6 = Mcqs.data[5]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[5]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[5]['optionC'],
                            groupValue: Mcqs.ans6,
                            onChanged: (value) {
                              Mcqs.ans6 = Mcqs.data[5]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[5]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[5]['optionD'],
                            groupValue: Mcqs.ans6,
                            onChanged: (value) {
                              Mcqs.ans6 = Mcqs.data[5]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[5]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[6]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[6]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[6]['optionA'],
                            groupValue: Mcqs.ans7,
                            onChanged: (value) {
                              Mcqs.ans7 = Mcqs.data[6]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[6]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[6]['optionB'],
                            groupValue: Mcqs.ans7,
                            onChanged: (value) {
                              Mcqs.ans7 = Mcqs.data[6]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[6]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[6]['optionC'],
                            groupValue: Mcqs.ans7,
                            onChanged: (value) {
                              Mcqs.ans7 = Mcqs.data[6]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[6]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[6]['optionD'],
                            groupValue: Mcqs.ans7,
                            onChanged: (value) {
                              Mcqs.ans7 = Mcqs.data[6]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[6]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[7]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[7]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[7]['optionA'],
                            groupValue: Mcqs.ans8,
                            onChanged: (value) {
                              Mcqs.ans8 = Mcqs.data[7]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[7]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[7]['optionB'],
                            groupValue: Mcqs.ans8,
                            onChanged: (value) {
                              Mcqs.ans8 = Mcqs.data[7]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[7]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[7]['optionC'],
                            groupValue: Mcqs.ans8,
                            onChanged: (value) {
                              Mcqs.ans8 = Mcqs.data[7]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[7]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[7]['optionD'],
                            groupValue: Mcqs.ans8,
                            onChanged: (value) {
                              Mcqs.ans8 = Mcqs.data[7]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[7]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[8]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[8]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[8]['optionA'],
                            groupValue: Mcqs.ans9,
                            onChanged: (value) {
                              Mcqs.ans9 = Mcqs.data[8]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[8]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[8]['optionB'],
                            groupValue: Mcqs.ans9,
                            onChanged: (value) {
                              Mcqs.ans9 = Mcqs.data[8]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[8]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[8]['optionC'],
                            groupValue: Mcqs.ans9,
                            onChanged: (value) {
                              Mcqs.ans9 = Mcqs.data[8]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[8]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[8]['optionD'],
                            groupValue: Mcqs.ans9,
                            onChanged: (value) {
                              Mcqs.ans9 = Mcqs.data[8]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[8]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[9]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[9]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[9]['optionA'],
                            groupValue: Mcqs.ans10,
                            onChanged: (value) {
                              Mcqs.ans10 = Mcqs.data[9]['optionA'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[9]['optionA'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[9]['optionB'],
                            groupValue: Mcqs.ans10,
                            onChanged: (value) {
                              Mcqs.ans10 = Mcqs.data[9]['optionB'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[9]['optionB'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[9]['optionC'],
                            groupValue: Mcqs.ans10,
                            onChanged: (value) {
                              Mcqs.ans10 = Mcqs.data[9]['optionC'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[9]['optionC'].toString(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: Mcqs.data[9]['optionD'],
                            groupValue: Mcqs.ans10,
                            onChanged: (value) {
                              Mcqs.ans10 = Mcqs.data[9]['optionD'].toString();
                              setState(() {});
                            },
                          ),
                          Text(
                            Mcqs.data[9]['optionD'].toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                Mcqs.onSubmit();
                Mcqs.isSubmited = !Mcqs.isSubmited;
                Mcqs.clearAll();
                setState(() {});
              },
              color: Colors.blue,
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Mcqs.isSubmited
                ? Text(
                    'Your Score is ${Mcqs.points}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
