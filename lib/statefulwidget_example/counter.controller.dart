import 'package:flutter/cupertino.dart';

class MyCounter {
  static int count = 0;
  static void increment() {
    count++;
    debugPrint(
      '$count',
    );
    // log('$count');
  }
}

class Counter {
  static int count1 = 0;
  static int count2 = 0;

  static void incrementBy1() {
    if (count1 < 50) {
      count1++;
    }
  }

  static void decrementBy1() {
    if (count1 > 0) {
      count1--;
    }
  }

  static void incrementBy2() {
    if (count2 < 50) {
      count2 = count2 + 2;
    }
  }

  static void decrementBy2() {
    if (count2 > 0) {
      count2 = count2 - 2;
    }
  }
}
