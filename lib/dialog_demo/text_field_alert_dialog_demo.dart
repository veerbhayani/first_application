import 'package:first_application/dialog_demo/text_field_alert_dialog_controller.dart';
import 'package:flutter/material.dart';

class SingleTextFieldAlertDialogDemo extends StatefulWidget {
  const SingleTextFieldAlertDialogDemo({super.key});

  @override
  State<SingleTextFieldAlertDialogDemo> createState() =>
      _SingleTextFieldAlertDialogDemoState();
}

class _SingleTextFieldAlertDialogDemoState
    extends State<SingleTextFieldAlertDialogDemo> {
  @override
  void dispose() {
    TextAlertController.txtNameEditingController.dispose();
    TextAlertController.txtSurNameEditingController.dispose();
    TextAlertController.txtAgeEditingController.dispose();
    TextAlertController.txtMobileEditingController.dispose();
    TextAlertController.txtEmailEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: TextAlertController.key,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  controller: TextAlertController.txtNameEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'First Name',
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  controller: TextAlertController.txtSurNameEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Surname',
                    labelText: 'Surname',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  controller: TextAlertController.txtUrlEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Image Url',
                    labelText: 'Url',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  controller: TextAlertController.txtAgeEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Age',
                    labelText: 'Age',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  controller: TextAlertController.txtMobileEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mobile Number',
                    labelText: 'Mobile Number',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  controller: TextAlertController.txtEmailEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email Id',
                    labelText: 'Email Id',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter EmailId';
                    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                        .hasMatch(value)) {
                      return 'valied Email';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'Gender :  ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Male',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Radio(
                      value: TextAlertController.male,
                      groupValue: TextAlertController.gender,
                      onChanged: (value) {
                        TextAlertController.gender = value!;
                        setState(() {});
                      },
                    ),
                    const Text(
                      'Female ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Radio(
                      value: TextAlertController.female,
                      groupValue: TextAlertController.gender,
                      onChanged: (value) {
                        TextAlertController.gender = value!;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'Hobby : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Cricket ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Checkbox(
                      value: TextAlertController.isCricket,
                      onChanged: (value) {
                        TextAlertController.isCricket = value!;
                        setState(() {});
                      },
                    ),
                    const Text(
                      'Singing ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Checkbox(
                      value: TextAlertController.isSinging,
                      onChanged: (value) {
                        TextAlertController.isSinging = value!;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'Salary : ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Slider(
                      value: TextAlertController.selectedSalary,
                      onChanged: (value) {
                        TextAlertController.selectedSalary = value;
                        setState(() {});
                      },
                      divisions: 10,
                      min: 10000,
                      max: 50000,
                      label: TextAlertController.selectedSalary.toString(),
                    ),
                  ],
                ),
                MaterialButton(
                  onPressed: () {
                    TextAlertController.addUser();
                    TextAlertController.clearMethod();
                    TextAlertController.clearUpDateMethod();
                    setState(() {});
                  },
                  color: Colors.blue,
                  height: 20,
                  focusColor: Colors.red,
                  elevation: 8,
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextAlertController.userData.isEmpty
                    ? const Text(
                        'There is not data',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                          itemCount: TextAlertController.userData.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () async {
                                TextAlertController.selectedIndex = index;
                                TextAlertController.onTapUserData();

                                await showDialog(
                                  context: context,
                                  builder: (context) {
                                    return StatefulBuilder(
                                      builder: (context, setState) =>
                                          SimpleDialog(
                                        children: [
                                          Form(
                                            key: TextAlertController.keyUpdate,
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                10,
                                              ),
                                              child: Column(
                                                children: [
                                                  TextFormField(
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    controller: TextAlertController
                                                        .txtUpdateNameEditingController,
                                                    decoration:
                                                        const InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      hintText: 'Name',
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  TextFormField(
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    controller: TextAlertController
                                                        .txtUpdateSurnameEditingController,
                                                    decoration:
                                                        const InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      hintText: 'Surname',
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  TextFormField(
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    controller: TextAlertController
                                                        .txtUpdateUrlEditingController,
                                                    decoration:
                                                        const InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      hintText: 'Url',
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  TextFormField(
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    controller: TextAlertController
                                                        .txtUpdateAgeEditingController,
                                                    decoration:
                                                        const InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      hintText: 'Age',
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  TextFormField(
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    controller: TextAlertController
                                                        .txtUpdateMobileEditingController,
                                                    decoration:
                                                        const InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      hintText: 'Mobile Number',
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  TextFormField(
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    controller: TextAlertController
                                                        .txtUpdateEmailEditingController,
                                                    validator: (value) {
                                                      if (value!.isEmpty) {
                                                        return 'Enter Email Id';
                                                      } else if (!RegExp(
                                                              r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                                                          .hasMatch(value)) {
                                                        return 'Enter Valide Email';
                                                      } else {
                                                        return null;
                                                      }
                                                    },
                                                    decoration:
                                                        const InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      hintText: 'EmailId',
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'Gender :  ',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                      const Text(
                                                        'Male',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                      Radio(
                                                        value:
                                                            TextAlertController
                                                                .male,
                                                        groupValue:
                                                            TextAlertController
                                                                .gender,
                                                        onChanged: (value) {
                                                          TextAlertController
                                                              .gender = value!;
                                                          setState(() {});
                                                        },
                                                      ),
                                                      const Text(
                                                        'Female',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                      Radio(
                                                        value:
                                                            TextAlertController
                                                                .female,
                                                        groupValue:
                                                            TextAlertController
                                                                .gender,
                                                        onChanged: (value) {
                                                          TextAlertController
                                                              .gender = value!;
                                                          setState(() {});
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'Hobby : ',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                      const Text(
                                                        'Cricket ',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                      Checkbox(
                                                        value:
                                                            TextAlertController
                                                                .isCricket,
                                                        onChanged: (value) {
                                                          TextAlertController
                                                                  .isCricket =
                                                              value!;
                                                          setState(() {});
                                                        },
                                                      ),
                                                      const Text(
                                                        'Singing ',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                      Checkbox(
                                                        value:
                                                            TextAlertController
                                                                .isSinging,
                                                        onChanged: (value) {
                                                          TextAlertController
                                                                  .isSinging =
                                                              value!;
                                                          setState(() {});
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'Salary : ',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                      Slider(
                                                        value:
                                                            TextAlertController
                                                                .selectedSalary,
                                                        onChanged: (value) {
                                                          TextAlertController
                                                                  .selectedSalary =
                                                              value;
                                                          setState(() {});
                                                        },
                                                        divisions: 10,
                                                        min: 10000,
                                                        max: 50000,
                                                        label:
                                                            TextAlertController
                                                                .selectedSalary
                                                                .toString(),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      MaterialButton(
                                                        onPressed: () {
                                                          if (TextAlertController
                                                              .keyUpdate
                                                              .currentState!
                                                              .validate()) {
                                                            TextAlertController
                                                                .updateUserDetail();
                                                            TextAlertController
                                                                .clearUpDateMethod();

                                                            Navigator.pop(
                                                                context);
                                                            setState(
                                                              () {},
                                                            );
                                                          }
                                                        },
                                                        child: const Text(
                                                          'Update',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                        ),
                                                      ),
                                                      MaterialButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                          setState(
                                                            () {},
                                                          );
                                                        },
                                                        child: const Text(
                                                          'Cancle',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                                setState(() {});
                              },
                              child: Dismissible(
                                key: UniqueKey(),
                                onDismissed: (direction) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text(
                                          'Are You Sure ?',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        actions: [
                                          MaterialButton(
                                            onPressed: () {
                                              TextAlertController.userData
                                                  .removeAt(index);
                                              Navigator.pop(context);
                                              setState(
                                                () {},
                                              );
                                            },
                                            child: const Text(
                                              'Delete',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              setState(
                                                () {},
                                              );
                                            },
                                            child: const Text(
                                              'Cancle',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  setState(() {});
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 185,
                                      padding: const EdgeInsets.all(
                                        10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 189, 227, 244),
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage:
                                                        NetworkImage(
                                                            TextAlertController
                                                                .userData[index]
                                                                .url!),
                                                    radius: 40,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Name : ${TextAlertController.userData[index].name!}',
                                                    style: const TextStyle(),
                                                  ),
                                                  Text(
                                                    'SurName : ${TextAlertController.userData[index].surName!}',
                                                    style: const TextStyle(),
                                                  ),
                                                  Text(
                                                    'Age : ${TextAlertController.userData[index].age!.toString()}',
                                                    style: const TextStyle(),
                                                  ),
                                                  Text(
                                                    'Mobile Number : ${TextAlertController.userData[index].mobileNumber!.toString()}',
                                                    style: const TextStyle(),
                                                  ),
                                                  Text(
                                                    'EmailId : ${TextAlertController.userData[index].emailId!}',
                                                    style: const TextStyle(),
                                                  ),
                                                  Text(
                                                    'Gender : ${TextAlertController.userData[index].gender!}',
                                                    style: const TextStyle(),
                                                  ),
                                                  Text(
                                                    'Hobby : ${TextAlertController.userData[index].hobby!.toString()}',
                                                    style: const TextStyle(),
                                                  ),
                                                  Text(
                                                    'Salary : ${TextAlertController.userData[index].salary!}',
                                                    style: const TextStyle(),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
              ],
            ),
          )),
    );
  }
}
