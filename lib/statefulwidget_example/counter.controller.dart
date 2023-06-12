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
