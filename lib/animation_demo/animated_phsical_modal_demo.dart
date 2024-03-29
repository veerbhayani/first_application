import 'package:flutter/material.dart';

class AnimatedPhysicalDemo extends StatefulWidget {
  const AnimatedPhysicalDemo({super.key});

  @override
  State<AnimatedPhysicalDemo> createState() => _AnimatedPhysicalDemoState();
}

class _AnimatedPhysicalDemoState extends State<AnimatedPhysicalDemo> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: _isFlat ? 0 : 6.0,
              color: Colors.white,
              shadowColor: Colors.black,
              duration: const Duration(milliseconds: 500),
              child: const SizedBox(
                height: 120,
                width: 120,
                child: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  _isFlat = !_isFlat;
                  setState(() {});
                },
                child: const Text('Click'))
          ],
        ),
      ),
    );
  }
}
