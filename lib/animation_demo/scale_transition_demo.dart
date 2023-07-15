import 'package:flutter/material.dart';

class ScaleTransitionDemo extends StatefulWidget {
  const ScaleTransitionDemo({super.key});

  @override
  State<ScaleTransitionDemo> createState() => _ScaleTransitionDemoState();
}

class _ScaleTransitionDemoState extends State<ScaleTransitionDemo>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeInOut);

    super.initState();
  }

  Animation<double>? _animation;

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation!,
          child: const FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}
