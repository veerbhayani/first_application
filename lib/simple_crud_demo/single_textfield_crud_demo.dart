import 'package:flutter/material.dart';

class SingleTextFieldCrudDemo extends StatefulWidget {
  const SingleTextFieldCrudDemo({super.key});

  @override
  State<SingleTextFieldCrudDemo> createState() =>
      _SingleTextFieldCrudDemoState();
}

class _SingleTextFieldCrudDemoState extends State<SingleTextFieldCrudDemo> {
  final TextEditingController _textUserNameController = TextEditingController();
  @override
  void dispose() {
    _textUserNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: _textUserNameController,
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}
