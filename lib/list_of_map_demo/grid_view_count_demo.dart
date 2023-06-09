import 'package:flutter/material.dart';

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 3,
              children: List.generate(
                18,
                (index) => Container(
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
