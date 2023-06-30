import 'package:first_application/simple_crud_demo/palindrome.controller.dart';
import 'package:flutter/material.dart';

class PalindromeNumberDemo extends StatefulWidget {
  const PalindromeNumberDemo({super.key});

  @override
  State<PalindromeNumberDemo> createState() => _PalindromeNumberDemoState();
}

class _PalindromeNumberDemoState extends State<PalindromeNumberDemo> {
  final TextEditingController _palindromeNumberController =
      TextEditingController();
  @override
  void dispose() {
    _palindromeNumberController.dispose();
    super.dispose();
  }

  int? enteredNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: TextField(
              controller: _palindromeNumberController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: MaterialButton(
              onPressed: () {
                enteredNumber = int.parse(_palindromeNumberController.text);
                CheckPalindromeNumber.palindromeNumber(enteredNumber!);
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
          ),
          if (enteredNumber != null)
            Text(
              CheckPalindromeNumber.palindromeNumber(enteredNumber!),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
