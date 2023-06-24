import 'package:flutter/material.dart';

class ListViewCustomDemo extends StatelessWidget {
  ListViewCustomDemo({super.key});
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
            child: ListView.custom(
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: [
                    Text(
                      myFriends[index],
                    ),
                  ],
                ),
                childCount: myFriends.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
