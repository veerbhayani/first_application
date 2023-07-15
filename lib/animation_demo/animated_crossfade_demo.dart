import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  const AnimatedCrossFadeDemo({super.key});

  @override
  State<AnimatedCrossFadeDemo> createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
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
            child: AnimatedCrossFade(
              firstChild: const Icon(
                Icons.music_note_sharp,
                size: 45,
                color: Colors.white,
              ),
              secondChild: const Icon(
                Icons.music_off,
                size: 45,
                color: Colors.yellow,
              ),
              crossFadeState: isSelected
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(
                seconds: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
