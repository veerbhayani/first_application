import 'package:flutter/material.dart';

class ListGenerateDemo extends StatelessWidget {
  ListGenerateDemo({super.key});
  final List<String> myFriends = [
    'ansh',
    'mintan',
    'vishal',
    'savan',
    'yash',
    'hardik',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          myFriends.length,
          (index) => Text(
            myFriends[index],
          ),
        ),
      ),
    );
  }
}
