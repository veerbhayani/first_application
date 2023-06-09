import 'package:first_application/list_of_map_demo/raw_data.dart';
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
              // same as above property R & D
              scrollDirection: Axis.horizontal,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(
                gridData.length,
                (index) => Container(
                  color: Colors.cyan[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        gridData[index]['icon'],
                        size: 35,
                      ),
                      Text(
                        gridData[index]['name'],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
