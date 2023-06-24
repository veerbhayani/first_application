import 'package:flutter/material.dart';

class MapDemo extends StatelessWidget {
  MapDemo({super.key});
  final Map<String, dynamic> myDetails = {
    'name': 'Viraj',
    'age': 19,
    'mobileNo': 9979425704,
    'emailId': 'virbhayani137@gmail.com',
    'address': 'Bhagavti Kripa Society'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            myDetails['name'],
          ),
          Text(
            myDetails['age'].toString(),
          ),
          Text(
            myDetails['mobileNo'].toString(),
          ),
          Text(
            myDetails['emailId'],
          ),
          Text(
            myDetails['address'],
          ),
        ],
      ),
    );
  }
}
