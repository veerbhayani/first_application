import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool isCricket = false, isFootball = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Hobby'),
          Checkbox(
            value: isCricket,
            onChanged: (value) {
              isCricket = value!;
              setState(() {});
            },
          ),
          const Text('Cricket'),
          Checkbox(
            value: isFootball,
            onChanged: (value) {
              isFootball = value!;
              setState(() {});
            },
          ),
          const Text('Football')
        ],
      ),
    );
  }
}
