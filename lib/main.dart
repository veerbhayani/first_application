import 'package:first_application/rto_mcqs_quiz_demo/rto_demo3_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const QuizPage2(),
    );
  }

  static void isDarkModeOn() {}
}
