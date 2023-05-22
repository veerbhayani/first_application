// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () {
                print('Hi i am Material Button');
              },
              child: const Text('Material Button'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                print('Hi i am Eleveted Button');
              },
              child: const Text('Elevated Button'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                print('Hi i am Text Button');
              },
              child: const Text('Text button'),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () {
                print('Hi i am Icon Button');
              },
              icon: const Icon(Icons.abc),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                print('Hi i am Outline Button');
              },
              child: const Text('Outline Button'),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                print('Hi i am Floating Action Button');
              },
              child: const Icon(
                Icons.message,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                print('Hi i am Floating Action Button');
              },
              label: const Text('Floating Action Button.Extended'),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
