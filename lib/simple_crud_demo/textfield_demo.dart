import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _middleNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  String? firstName, middleName, lastName;
  bool isSubmited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _firstNameController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _middleNameController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _lastNameController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: MaterialButton(
              onPressed: () {
                firstName = _firstNameController.text;
                middleName = _middleNameController.text;
                lastName = _lastNameController.text;
                isSubmited = !isSubmited;
                if (isSubmited == true) {
                  _firstNameController.clear();
                  _middleNameController.clear();
                  _lastNameController.clear();
                }
                setState(() {});
              },
              color: Colors.blue,
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          if (firstName != null && middleName != null && lastName != null)
            Text(
              '${firstName!} \t ${middleName!} \t ${lastName!}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
