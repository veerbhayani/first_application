import 'package:flutter/material.dart';

class RegistrationFormDemo extends StatefulWidget {
  const RegistrationFormDemo({super.key});

  @override
  State<RegistrationFormDemo> createState() => _RegistrationFormDemoState();
}

class _RegistrationFormDemoState extends State<RegistrationFormDemo> {
  final TextEditingController _firstNameTextController =
      TextEditingController();
  final TextEditingController _middleNameTextController =
      TextEditingController();
  final TextEditingController _ageTextController = TextEditingController();
  @override
  void dispose() {
    _firstNameTextController.dispose();
    _ageTextController.dispose();
    _middleNameTextController.dispose();
    super.dispose();
  }

  List<String> userFirstName = [];
  List<String> userMiddleName = [];
  List<String> userAge = [];
  List<String> userGender = [];
  bool isUpdate = false;
  int selectedIndex = 0;
  String male = 'Male', female = 'Female', gender = 'Gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: TextField(
              controller: _firstNameTextController,
              decoration: const InputDecoration(
                label: Text('First Name'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: TextField(
              controller: _middleNameTextController,
              decoration: const InputDecoration(
                label: Text('Middle Name'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: TextField(
              controller: _ageTextController,
              decoration: const InputDecoration(
                label: Text('Age'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Gender'),
              Radio(
                activeColor: Colors.blue,
                toggleable: true,
                mouseCursor: MaterialStateMouseCursor.clickable,
                splashRadius: 20,
                value: male,
                groupValue: gender,
                onChanged: (value) {
                  gender = value!;
                  setState(() {});
                },
              ),
              const Text('Male'),
              Radio(
                value: female,
                activeColor: Colors.pink,
                groupValue: gender,
                onChanged: (value) {
                  gender = value!;
                  setState(() {});
                },
              ),
              const Text('Female')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blue,
                onPressed: isUpdate
                    ? () {
                        userFirstName[selectedIndex] =
                            _firstNameTextController.text;
                        userMiddleName[selectedIndex] =
                            _middleNameTextController.text;
                        userAge[selectedIndex] = _ageTextController.text;
                        userGender[selectedIndex] = gender;
                        _firstNameTextController.clear();
                        _middleNameTextController.clear();
                        _ageTextController.clear();
                        gender = 'Gender';
                        isUpdate = false;
                        setState(() {});
                      }
                    : () {
                        userFirstName.add(_firstNameTextController.text);
                        userMiddleName.add(_middleNameTextController.text);
                        userAge.add(_ageTextController.text);
                        userGender.add(gender);
                        _firstNameTextController.clear();
                        _middleNameTextController.clear();
                        _ageTextController.clear();
                        gender = 'Gender';
                        setState(() {});
                      },
                child: Text(
                  isUpdate ? 'Update' : 'Submit',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          userFirstName.isEmpty
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'There is no data',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: userFirstName.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        onDismissed: (direction) {
                          userFirstName.removeAt(index);
                          userMiddleName.removeAt(index);
                          userAge.removeAt(index);
                          userGender.removeAt(index);
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
                            isUpdate = true;
                            _firstNameTextController.text =
                                userFirstName[index];
                            _middleNameTextController.text =
                                userMiddleName[index];
                            _ageTextController.text = userAge[index];
                            gender = userGender[index];
                            selectedIndex = index;
                            setState(() {});
                          },
                          leading: CircleAvatar(
                            child: Text(
                              userAge[index],
                            ),
                          ),
                          title: Text(
                            userFirstName[index],
                          ),
                          subtitle: Text(
                            userMiddleName[index],
                          ),
                          trailing: Text(
                            "${userAge[index]} \n ${userGender[index]}",
                            textAlign: TextAlign.center,
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
