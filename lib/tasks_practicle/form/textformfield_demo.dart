import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({super.key});

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final TextEditingController _txtUserNameController = TextEditingController();

  @override
  void dispose() {
    _txtUserNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                15,
              ),
              child: TextFormField(
                controller: _txtUserNameController,
                validator: (value) =>
                    value!.isEmpty ? 'Username Required' : null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Enter Here',
                  ),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                if (key.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Form Submited'),
                    ),
                  );
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
          ],
        ),
      ),
    );
  }
}
