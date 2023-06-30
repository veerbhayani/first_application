import 'package:first_application/simple_crud_demo/pattern.controller.dart';
import 'package:flutter/material.dart';

class PatternDemo extends StatefulWidget {
  const PatternDemo({super.key});

  @override
  State<PatternDemo> createState() => _PatternDemoState();
}

class _PatternDemoState extends State<PatternDemo> {
  @override
  void dispose() {
    Patterns.txtPatternController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: TextField(
              controller: Patterns.txtPatternController,
            ),
          ),
          SizedBox(
            height: 300,
            child: GridView.builder(
              itemCount: Patterns.allPatterns.length,
              itemBuilder: (context, index) {
                return MaterialButton(
                  color: Colors.blue,
                  child: Text(
                    Patterns.allPatterns[index]['patternCount'],
                  ),
                  onPressed: () {
                    Patterns.getPattern(index,
                        value: Patterns.txtPatternController.text);
                    setState(() {});
                  },
                );
              },
              shrinkWrap: true,
              controller: ScrollController(),
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 3,
              ),
            ),
          ),
          if (Patterns.displayPatterns != null)
            Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Center(
                child: SelectableText(
                  Patterns.displayPatterns!,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
