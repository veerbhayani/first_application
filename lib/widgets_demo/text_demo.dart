import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Viraj Bhayani',
          style: TextStyle(
            // backgroundColor: Colors.yellowAccent,
            color: Colors.blueAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.dashed,
            decorationThickness: 5,
            height: 5,
            letterSpacing: 15,
            overflow: TextOverflow.visible,
            textBaseline: TextBaseline.alphabetic,
            wordSpacing: 20,

            shadows: [
              Shadow(
                color: Colors.red,
                blurRadius: 3,
                offset: Offset(0, -2),
              ),
              Shadow(
                color: Colors.black,
                blurRadius: 9,
                offset: Offset(20, 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
