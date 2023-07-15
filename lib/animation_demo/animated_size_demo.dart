import 'package:flutter/material.dart';

class AnimatedSizeDemo extends StatefulWidget {
  const AnimatedSizeDemo({super.key});

  @override
  State<AnimatedSizeDemo> createState() => _AnimatedSizeDemoState();
}

class _AnimatedSizeDemoState extends State<AnimatedSizeDemo> {
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              _size = _size == 300 ? 100 : 300;
              setState(() {});
            },
            child: Container(
              color: Colors.white,
              child: AnimatedSize(
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                child: FlutterLogo(
                  size: _size,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
