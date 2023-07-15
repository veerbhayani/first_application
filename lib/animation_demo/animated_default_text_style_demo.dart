import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleDemo extends StatefulWidget {
  const AnimatedDefaultTextStyleDemo({super.key});

  @override
  State<AnimatedDefaultTextStyleDemo> createState() =>
      _AnimatedDefaultTextStyleDemoState();
}

class _AnimatedDefaultTextStyleDemoState
    extends State<AnimatedDefaultTextStyleDemo> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          isSelected = !isSelected;
          setState(() {});
        },
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            color: Colors.red,
            child: AnimatedDefaultTextStyle(
              curve: Curves.linear,
              style: isSelected == true
                  ? const TextStyle(
                      fontSize: 30,
                      color: Colors.yellow,
                    )
                  : const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
              duration: const Duration(
                seconds: 2,
              ),
              child: const Text(
                'Viraj Bhayani',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
