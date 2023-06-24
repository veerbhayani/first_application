import 'package:first_application/list_of_map_demo/raw_data.dart';
import 'package:first_application/list_of_map_demo/user.model.dart';
import 'package:flutter/material.dart';

class ModelScreenDemo extends StatelessWidget {
  const ModelScreenDemo({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in userDetails) {
      userData.add(
        User.fromJson(element),
      );
    }
    return Scaffold(
      body: Column(
        children: List.generate(
          userData.length,
          (index) => ListTile(
            title: Text(userData[index].userName!),
            subtitle: Text(userData[index].emailId!),
          ),
        ),
      ),
    );
  }
}
