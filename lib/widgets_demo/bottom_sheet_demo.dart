// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                  ),
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text('Create'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
