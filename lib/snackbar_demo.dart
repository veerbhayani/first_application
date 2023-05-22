// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                print('Click me');
              },
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
