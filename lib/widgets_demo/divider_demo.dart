import 'package:flutter/material.dart';

class Dividerdemo extends StatelessWidget {
  const Dividerdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntrinsicWidth(
        child: Column(
          children: [
            Text('Viraj'),
            Divider(
              height: 50,
              thickness: 2,
              color: Colors.black,
              // endIndent: 50,
              // indent: 50,
            ),
            Text("Patel"),
          ],
        ),
      ),
    );

    // return const Scaffold(
    //   body: IntrinsicHeight(
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             Text('Viraj'),
    //             Text('bhayani'),
    //           ],
    //         ),
    //         VerticalDivider(
    //           color: Colors.black,
    //         ),
    //         Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             Text('Mintan'),
    //             Text('lathiya'),
    //           ],
    //         ),
    //         VerticalDivider(
    //           color: Colors.black,
    //         ),
    //         Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             Text('vishal'),
    //             Text('mavani'),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
