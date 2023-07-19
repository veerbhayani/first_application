import 'package:flutter/material.dart';

class TimePickerDemo extends StatefulWidget {
  const TimePickerDemo({super.key});

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  TimeOfDay? selectedTime;
  TimeOfDay formate = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () async {
                selectedTime = await showTimePicker(
                  context: context,
                  anchorPoint: const Offset(10, 20),
                  cancelText: 'Cancle Now',
                  confirmText: 'Confirm',
                  helpText: 'Select Time ',
                  hourLabelText: 'Hour',
                  minuteLabelText: 'Minute',
                  orientation: Orientation.portrait,
                  initialTime: formate,
                );
                setState(() {});
              },
              color: Colors.blue,
              child: const Text(
                'Show Time Picker',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Text(formate.format(context)),
          ],
        ),
      ),
    );
  }
}

//  Time picker properties
//  anchorPoint: ,
//  cancelText: ,
//  confirmText:  ,
//  helpText: ,
//  hourLabelText: ,
//  minuteLabelText: ,
//  orientation: ,
