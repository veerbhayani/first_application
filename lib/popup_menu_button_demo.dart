import 'package:flutter/material.dart';

class PopUpMenuButtonDemo extends StatefulWidget {
  const PopUpMenuButtonDemo({super.key});

  @override
  State<PopUpMenuButtonDemo> createState() => _PopUpMenuButtonDemoState();
}

class _PopUpMenuButtonDemoState extends State<PopUpMenuButtonDemo> {
  List myFriends = [
    'viraj',
    'vishal',
    'mintan',
    'hardik',
    'ansh',
    'sahil',
    'savan'
  ];
  String selectedValue = "mintan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupMenuButton(
          // ********** R&D ************ //
          // child: ,
          // clipBehavior: ,
          // initialValue: ,
          // onCanceled: ,
          // onOpened: ,
          // onSelected: ,
          // position: ,
          // tooltip: ,
          position: PopupMenuPosition.over,
          tooltip: 'select friend names',

          initialValue: selectedValue,
          enabled: true,
          clipBehavior: Clip.none,
          onOpened: () {},
          onSelected: (value) {
            selectedValue = value as String;
            setState(() {});
          },
          itemBuilder: (context) => myFriends
              .map(
                (e) => PopupMenuItem(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
          child: const Icon(
            Icons.arrow_drop_down,
            size: 55,
          ),
        ),
      ),
    );
  }
}
