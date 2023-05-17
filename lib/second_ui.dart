import 'package:flutter/material.dart';

class ExpandedWithSingleChildScrollViewDemo extends StatelessWidget {
  const ExpandedWithSingleChildScrollViewDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 5),
              physics: ClampingScrollPhysics(),
              reverse: true,
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.abc,
                        size: 50,
                      ),
                      Text(
                        'Icon 1',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.accessibility,
                        size: 50,
                      ),
                      Text(
                        'Icon 2',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.access_alarm,
                        size: 50,
                      ),
                      Text(
                        'Icon 3',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.ac_unit,
                        size: 50,
                      ),
                      Text(
                        'Icon 4',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.accessible,
                        size: 50,
                      ),
                      Text(
                        'Icon 5',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.accessible_forward_outlined,
                        size: 50,
                      ),
                      Text(
                        'Icon 6',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.account_tree,
                        size: 50,
                      ),
                      Text(
                        'Icon 7',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              reverse: true,
              child: Column(
                children: [
                  Icon(
                    Icons.add_a_photo_sharp,
                    size: 50,
                  ),
                  Text(
                    'Icon 1',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    size: 50,
                  ),
                  Text(
                    'Icon 2',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.add_link_outlined,
                    size: 50,
                  ),
                  Text(
                    'Icon 3',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.add_location_outlined,
                    size: 50,
                  ),
                  Text(
                    'Icon 4',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.abc,
                        size: 50,
                      ),
                      Text(
                        'Icon 1',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.accessibility,
                        size: 50,
                      ),
                      Text(
                        'Icon 2',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.access_alarm,
                        size: 50,
                      ),
                      Text(
                        'Icon 3',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.ac_unit,
                        size: 50,
                      ),
                      Text(
                        'Icon 4',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.accessible,
                        size: 50,
                      ),
                      Text(
                        'Icon 5',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.accessible_forward_outlined,
                        size: 50,
                      ),
                      Text(
                        'Icon 6',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.account_tree,
                        size: 50,
                      ),
                      Text(
                        'Icon 7',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Icon(
                    Icons.add_a_photo_sharp,
                    size: 50,
                  ),
                  Text(
                    'Icon 1',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    size: 50,
                  ),
                  Text(
                    'Icon 2',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.add_link_outlined,
                    size: 50,
                  ),
                  Text(
                    'Icon 3',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.add_location_outlined,
                    size: 50,
                  ),
                  Text(
                    'Icon 4',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.add_location_alt_sharp,
                    size: 50,
                  ),
                  Text(
                    'Icon 5',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.more_horiz_rounded,
                    size: 50,
                  ),
                  Text(
                    'Icon 6',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
