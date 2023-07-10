import 'package:first_application/simple_crud_using_model_class/user.model.dart';
import 'package:flutter/material.dart';

class SimpleCrudModelUiDemo extends StatefulWidget {
  const SimpleCrudModelUiDemo({super.key});

  @override
  State<SimpleCrudModelUiDemo> createState() => _SimpleCrudModelUiDemoState();
}

class _SimpleCrudModelUiDemoState extends State<SimpleCrudModelUiDemo> {
  final TextEditingController _txtUserFirstNameController =
      TextEditingController();
  final TextEditingController _txtUserAgeController = TextEditingController();
  final TextEditingController _txtUserEmailIdController =
      TextEditingController();

  @override
  void dispose() {
    _txtUserFirstNameController.dispose();
    _txtUserAgeController.dispose();
    _txtUserEmailIdController.dispose();
    super.dispose();
  }

  void clearAll() {
    _txtUserAgeController.clear();
    _txtUserEmailIdController.clear();
    _txtUserFirstNameController.clear();
  }

  List<User> userData = [];
  bool isUpdate = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: TextField(
              controller: _txtUserFirstNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Enter First Name'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: TextField(
              controller: _txtUserAgeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Enter Age'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: TextField(
              controller: _txtUserEmailIdController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Enter Email id'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: isUpdate
                  ? () {
                      userData[selectedIndex].firstName =
                          _txtUserFirstNameController.text;
                      userData[selectedIndex].age =
                          int.parse(_txtUserAgeController.text);
                      userData[selectedIndex].emailId =
                          _txtUserEmailIdController.text;
                      clearAll();
                      isUpdate = false;
                      setState(() {});
                    }
                  : () {
                      userData.add(
                        User.fromJson(
                          {
                            'firstName': _txtUserFirstNameController.text,
                            'emailId': _txtUserEmailIdController.text,
                            'age': int.parse(_txtUserAgeController.text == ''
                                ? '0'
                                : _txtUserAgeController.text),
                          },
                        ),
                      );
                      clearAll();
                      setState(() {});
                    },
              child: Text(
                isUpdate ? 'Update' : 'Submit',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          userData.isEmpty
              ? const Text(
                  'There is no data',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: userData.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        onDismissed: (direction) {
                          userData.removeAt(index);
                          setState(() {});
                        },
                        key: UniqueKey(),
                        background: Container(
                          color: Colors.red[300],
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Swipe to delete',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        child: ListTile(
                          onTap: () {
                            _txtUserFirstNameController.text =
                                userData[index].firstName!;
                            _txtUserAgeController.text =
                                userData[index].age.toString();
                            _txtUserEmailIdController.text =
                                userData[index].emailId!;
                            isUpdate = true;
                            selectedIndex = index;
                            setState(() {});
                          },
                          leading: CircleAvatar(
                            child: Text(
                              userData[index].age.toString(),
                            ),
                          ),
                          title: Text(userData[index].firstName!),
                          subtitle: Text(userData[index].emailId!),
                          trailing: TextButton(
                            onPressed: () {
                              userData.removeAt(index);
                              setState(() {});
                            },
                            child: const Text(
                              'delete',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
