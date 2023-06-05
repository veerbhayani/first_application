import 'package:flutter/material.dart';

class ListOfMapDemo extends StatelessWidget {
  ListOfMapDemo({super.key});
  final List<Map<String, dynamic>> studentsDetails = [
    {
      'name': 'viraj',
      'age': 19,
      'stream': 'Commerce',
      'emailId': 'virbhayani137@gmail.com'
    },
    {
      'name': 'mintan',
      'age': 25,
      'stream': 'Arts',
      'emailId': 'mintanlathiya@gmail.com'
    },
    {
      'name': 'hardik',
      'age': 26,
      'stream': 'Science',
      'emailId': 'hardiksuvagiya@gmail.com'
    },
    {
      'name': 'vishal',
      'age': 25,
      'stream': 'Commerce',
      'emailId': 'vishalmavani@gmail.com'
    },
    {
      'name': 'ansh',
      'age': 19,
      'stream': 'Science',
      'emailId': 'anshuchaniyara@gmail.com'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          studentsDetails.length,
          (index) => ListTile(
            title: Text(
              studentsDetails[index]['name'],
            ),
            subtitle: Text(
              studentsDetails[index]['emailId'],
            ),
            trailing: Text(
              studentsDetails[index]['stream'],
            ),
            leading: CircleAvatar(
              child: Text(
                studentsDetails[index]['age'].toString(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
