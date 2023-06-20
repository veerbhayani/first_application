import 'package:first_application/button_demo/rto_mcq.controller.dart';
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
              child: ListView.builder(
                itemExtent: 200,
                scrollDirection: Axis.vertical,
                itemCount: Mcqs.data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Mcqs.data[index]['queNo'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Text(
                                Mcqs.data[index]['que'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: Mcqs.data[index]['optionA'],
                              groupValue: Mcqs.data[index]['que'],
                              onChanged: (value) {
                                Mcqs.data[index]['que'] =
                                    Mcqs.data[index]['optionA'];
                                setState(() {});
                              }),
                          Text(
                            Mcqs.data[index]['optionA'],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: Mcqs.data[index]['optionB'],
                              groupValue: Mcqs.data[index]['que'],
                              onChanged: (value) {
                                Mcqs.data[index]['que'] =
                                    Mcqs.data[index]['optionB'];
                                setState(() {});
                              }),
                          Text(
                            Mcqs.data[index]['optionB'],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: Mcqs.data[index]['optionC'],
                              groupValue: Mcqs.data[index]['que'],
                              onChanged: (value) {
                                Mcqs.data[index]['que'] =
                                    Mcqs.data[index]['optionC'];
                                setState(() {});
                              }),
                          Text(
                            Mcqs.data[index]['optionC'],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: Mcqs.data[index]['optionD'],
                              groupValue: Mcqs.data[index]['que'],
                              onChanged: (value) {
                                Mcqs.data[index]['que'] =
                                    Mcqs.data[index]['optionD'];
                                setState(() {});
                              }),
                          Text(
                            Mcqs.data[index]['optionD'],
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
      ),
    );
  }
}
