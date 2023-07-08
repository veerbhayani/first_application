import 'package:flutter/material.dart';

class TextFormFieldFormDemo extends StatefulWidget {
  const TextFormFieldFormDemo({super.key});

  @override
  State<TextFormFieldFormDemo> createState() => _TextFormFieldFormDemoState();
}

class _TextFormFieldFormDemoState extends State<TextFormFieldFormDemo> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final TextEditingController _txtUserNameController = TextEditingController();
  final TextEditingController _txtUserSurNameController =
      TextEditingController();
  final TextEditingController _txtUserMobileNoController =
      TextEditingController();
  final TextEditingController _txtUserEmailIdController =
      TextEditingController();
  final TextEditingController _txtUserAddressController =
      TextEditingController();
  final TextEditingController _txtUserAgeController = TextEditingController();
  @override
  void dispose() {
    _txtUserNameController.dispose();
    super.dispose();
  }

  String email = 'virbhayani137@gmail.com';
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username Required';
                  } else if (value.characters.length > 20) {
                    return 'Limit Execed';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Enter Username',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                15,
              ),
              child: TextFormField(
                controller: _txtUserSurNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Surname Required';
                  } else if (value.characters.length > 15) {
                    return 'Limit Execed';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Enter Surname',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                15,
              ),
              child: TextFormField(
                controller: _txtUserMobileNoController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Mobile No Required';
                  } else if (value.characters.length > 10) {
                    return 'Enter 10 Digit Mobile No';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Enter Mobile No',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                15,
              ),
              child: TextFormField(
                controller: _txtUserEmailIdController,
                validator: (value) => value!.isEmpty
                    ? 'Email Id Required'
                    : !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)
                        ? 'Enter Email Correctly'
                        : null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Enter EmailId',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                15,
              ),
              child: TextFormField(
                controller: _txtUserAddressController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Address Required';
                  } else if (value.characters.length > 50) {
                    return 'Enter below 50 Characters Only';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Enter Address',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                15,
              ),
              child: TextFormField(
                controller: _txtUserAgeController,
                validator: (value) {
                  try {
                    if (value!.isEmpty) {
                      return "Age Required";
                    } else if (int.parse(value) > 100) {
                      return "Enter Age Below 100";
                    } else {
                      return null;
                    }
                  } catch (e) {
                    return 'Enter Valid Age';
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    'Enter Age',
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
