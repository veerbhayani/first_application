import 'package:flutter/material.dart';

class AnimationBuilderdDemo extends StatefulWidget {
  const AnimationBuilderdDemo({super.key});

  @override
  State<AnimationBuilderdDemo> createState() => _AnimationBuilderdDemoState();
}

class _AnimationBuilderdDemoState extends State<AnimationBuilderdDemo>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 20,
      ),
    )..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animationController!,
          builder: (context, child) {
            return Transform.rotate(
              angle: -animationController!.value * 100,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }
}
