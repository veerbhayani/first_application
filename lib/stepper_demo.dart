import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  const StepperDemo({super.key});

  @override
  State<StepperDemo> createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int stepIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        elevation: 20,
        currentStep: stepIndex,
        onStepCancel: stepIndex != 0
            ? () {
                stepIndex--;

                setState(() {});
              }
            : null,
        onStepContinue: stepIndex != 2
            ? () {
                stepIndex++;

                setState(() {});
              }
            : null,
        onStepTapped: (value) {
          stepIndex = value;
          setState(() {});
        },
        steps: const [
          Step(
            title: Text('First Step'),
            content: Text('Hi i am first step content'),
            isActive: true,
            label: Text('go ahed'),
            state: StepState.error,
            subtitle: Text('O hello solve error carefully'),
          ),
          Step(
            title: Text('Second Step'),
            content: Text('Hi i am second step content'),
          ),
          Step(
            title: Text('Third Step'),
            content: Text('Hi i am third  step content'),
          ),
        ],
      ),
    );
  }
}
