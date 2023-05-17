import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  const IconDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.access_alarm_rounded,
          color: Colors.green,
          size: 50,
          shadows: [
            Shadow(
              blurRadius: 20,
              color: Colors.green,
              offset: Offset(1, 2),
            ),
          ],
        ),
      ),
    );
  }
}
