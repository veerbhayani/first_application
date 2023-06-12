import 'package:first_application/statefulwidget_example/counter.controller.dart';
import 'package:flutter/material.dart';

class CounterAppDemo extends StatefulWidget {
  const CounterAppDemo({super.key});
  @override
  State<CounterAppDemo> createState() => _CounterAppDemoState();
}

class _CounterAppDemoState extends State<CounterAppDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Counter.decrementBy1();
                  setState(() {});
                },
                child: const Icon(
                  Icons.remove,
                ),
              ),
              Text(
                Counter.count1.toString(),
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Counter.incrementBy1();
                  setState(() {});
                },
                child: const Icon(
                  Icons.add,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Counter.decrementBy2();
                  setState(() {});
                },
                child: const Icon(
                  Icons.remove,
                ),
              ),
              Text(
                Counter.count2.toString(),
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Counter.incrementBy2();
                  setState(() {});
                },
                child: const Icon(
                  Icons.add,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
