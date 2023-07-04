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

  List<dynamic> userData = [];
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
              controller: _textUserNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
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
                      userData[selectedIndex] = _textUserNameController.text;
                      isUpdate = false;
                      _textUserNameController.clear();
                      setState(() {});
                    }
                  : () {
                      userData.add(_textUserNameController.text);
                      _textUserNameController.clear();
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
                            isUpdate = true;
                            selectedIndex = index;
                            setState(() {});
                          },
                          leading: CircleAvatar(
                            child: Text(
                              userData[index]
                                  .toString()
                                  .characters
                                  .first
                                  .toUpperCase(),
                            ),
                          ),
                          title: Text(
                            userData[index],
                          ),
                          trailing: TextButton(
                            onPressed: () {
                              userData.removeAt(index);
                              setState(() {});
                            },
                            child: const Text('delete'),
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
