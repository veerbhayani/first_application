import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
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
            height: 200,
            width: 200,
            color: Colors.red,
            child: AnimatedAlign(
              curve: Curves.fastOutSlowIn,
              alignment: isSelected ? Alignment.bottomLeft : Alignment.topRight,
              duration: const Duration(
                seconds: 3,
              ),
              child: const Icon(
                Icons.abc,
                size: 55,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
