import 'package:first_application/statefulwidget_example/color.controller.dart';
import 'package:flutter/material.dart';

class ColorChangerDemo extends StatefulWidget {
  const ColorChangerDemo({super.key});

  @override
  State<ColorChangerDemo> createState() => _ColorChangerDemoState();
}

class _ColorChangerDemoState extends State<ColorChangerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 5,
          crossAxisSpacing: 3,
          crossAxisCount: 3,
        ),
        itemCount: containerColors.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            onTapContainer(index);
            setState(() {});
          },
          child: Container(
            color: containerColors[index],
          ),
        ),
      ),
    );
  }
}
