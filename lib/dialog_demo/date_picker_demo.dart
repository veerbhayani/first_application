import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () async {
                selectedDate = await showDatePicker(
                  context: context,
                  currentDate: DateTime.now(),
                  confirmText: 'Confirm',
                  fieldHintText: 'mm/dd/yyyy',
                  fieldLabelText: 'Enter Date Here',
                  cancelText: 'Cancle',
                  helpText: 'Select Date',
                  keyboardType: TextInputType.datetime,
                  initialDatePickerMode: DatePickerMode.year,
                  textDirection: TextDirection.ltr,
                  anchorPoint: const Offset(10, 1),
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2050),
                );
                setState(() {});
              },
              color: Colors.blue,
              child: const Text(
                'Show Date Picker',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              selectedDate.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

// Date picker Properties
// currentDate: ,
// confirmText: ,
// fieldHintText: ,
// fieldLabelText: ,
// cancelText: ,
// helpText: ,
// keyboardType: ,
// initialDatePickerMode: ,
// textDirection: ,
// anchorPoint: ,

