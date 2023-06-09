import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {
  ListViewBuilderDemo({super.key});
  final List<String> myFriends = [
    'ansh',
    'mintan',
    'vishal',
    'savan',
    'yash',
    'hardik',
    'vivek',
    'vimal',
    'sahil',
    'axay'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    myFriends[index],
                  ),
                  const Divider(),
                ],
              ),
              itemCount: myFriends.length,
            ),
          ),
        ],
      ),
    );
  }
}
