import 'package:flutter/material.dart';

import 'color.controller.dart';

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
        padding: const EdgeInsets.all(10),
        itemCount: containerColors.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              color: containerColors[index],
            ),
          );
        },
      ),
    );
  }
}
