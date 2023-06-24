import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  const DropDownButtonDemo({super.key});

  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  List myFriends = [
    'viraj',
    'vishal',
    'mintan',
    'hardik',
    'ansh',
    'sahil',
    'savan'
  ];
  List streams = [
    'Science',
    'Commerce',
    'Arts',
  ];
  String? selectedValue, selectedStream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButton(
            value: selectedValue,
            items: myFriends
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
            onChanged: (value) {
              selectedValue = value as String;
              setState(() {});
            },
          ),
          DropdownButton(
            value: selectedStream,
            items: List.generate(
              streams.length,
              (index) => DropdownMenuItem(
                value: streams[index],
                child: Text(
                  streams[index],
                ),
              ),
            ),
            onChanged: (value) {
              selectedStream = value as String;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
