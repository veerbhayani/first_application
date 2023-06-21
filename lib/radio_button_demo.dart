import 'package:flutter/material.dart';

class RadioButtonDemo extends StatefulWidget {
  const RadioButtonDemo({super.key});
  @override
  State<RadioButtonDemo> createState() => RadioButtonDemoState();
}

class RadioButtonDemoState extends State<RadioButtonDemo> {
  String male = 'Male', female = 'Female', gender = 'Gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Gender'),
          Radio(
            value: male,
            groupValue: gender,
            onChanged: (value) {
              gender = value!;
              setState(() {});
            },
          ),
          const Text('Male'),
          Radio(
            value: female,
            groupValue: gender,
            onChanged: (value) {
              gender = value!;
              setState(() {});
            },
          ),
          const Text('Female')
        ],
      ),
    );
  }
}
