import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // Determines the way that drag start behavior is handled.
        dragStartBehavior: DragStartBehavior.down,

        // If non-null, forces the children to have the given extent in the scroll direction.
        itemExtent: 20,

        // ScrollViewKeyboardDismissBehavior the defines how this ScrollView will dismiss the keyboard automatically.
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

        // The amount of space by which to inset the children.
        padding: const EdgeInsets.all(10.0),

        // Whether this is the primary scroll view associated with the parent PrimaryScrollController.
        primary: true,

        // Whether the scroll view scrolls in the reading direction.
        reverse: false,

        // Whether the extent of the scroll view in the scrollDirection should be determined by the contents being viewed.
        shrinkWrap: true,

        // The content will be clipped (or not) according to this option.
        clipBehavior: Clip.hardEdge,

        // How the scroll view should respond to user input.
        physics: const ClampingScrollPhysics(),

        children: [
          ...List.generate(
            200,
            (index) => Text(
              index.toString(),
            ),
          ),
        ],
      ),
    );
  }
}


        // dragStartBehavior: ,
        // itemExtent: ,
        // keyboardDismissBehavior: ,
        // padding: ,
        // primary: ,
        // reverse: ,
        // shrinkWrap: ,
        // clipBehavior: , 