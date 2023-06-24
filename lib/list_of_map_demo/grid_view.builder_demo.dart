import 'package:first_application/list_of_map_demo/raw_data.dart';
import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              // same as above property R & D
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 3,
                // childAspectRatio: , R & D
              ),
              itemCount: gridData.length,
              itemBuilder: (context, index) => Container(
                alignment: Alignment.center,
                color: Colors.grey,
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
        ],
      ),
    );
  }
}
