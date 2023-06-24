import 'package:flutter/material.dart';

List<Color> containerColors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.indigo,
  Colors.purple,
  Colors.brown,
  Colors.pink
];

int selectedContainerIndex = 0;

void onTapContainer(int index) {
  if (selectedContainerIndex == 0) {
    selectedContainerIndex = index;
  } else {
    Color? temp;
    temp = containerColors[selectedContainerIndex];
    containerColors[selectedContainerIndex] = containerColors[index];
    containerColors[index] = temp;
    selectedContainerIndex = 0;
  }
}
