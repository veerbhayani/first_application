import 'package:flutter/material.dart';

class AnimatedRotationDemo extends StatefulWidget {
  const AnimatedRotationDemo({super.key});

  @override
  State<AnimatedRotationDemo> createState() => _AnimatedRotationDemoState();
}

class _AnimatedRotationDemoState extends State<AnimatedRotationDemo> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  turns += 1 / 4;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
                child: const Text('Rotate Logo'))
          ],
        ),
      ),
    );
  }
}
