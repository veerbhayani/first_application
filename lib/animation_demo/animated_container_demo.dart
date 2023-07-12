import 'dart:math';

import 'package:flutter/material.dart';

// class MyAnimatedContainerDemo extends StatefulWidget {
//   const MyAnimatedContainerDemo({super.key});

//   @override
//   State<MyAnimatedContainerDemo> createState() =>
//       _MyAnimatedContainerDemoState();
// }

// class _MyAnimatedContainerDemoState extends State<MyAnimatedContainerDemo> {
//   Random random = Random();
//   double height = 100, width = 100;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               height: height,
//               width: width,
//               color: Colors.black,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             MaterialButton(
//               color: Colors.blue,
//               onPressed: () {
//                 height = random.nextDouble() * 100;
//                 width = random.nextDouble() * 100;
//                 setState(() {});
//               },
//               child: const Text(
//                 'Change value',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyAnimatedContainerDemo extends StatefulWidget {
  const MyAnimatedContainerDemo({super.key});

  @override
  State<MyAnimatedContainerDemo> createState() =>
      _MyAnimatedContainerDemoState();
}

class _MyAnimatedContainerDemoState extends State<MyAnimatedContainerDemo> {
  Random random = Random();
  double height = 100, width = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              curve: Curves.bounceInOut,
              duration: const Duration(
                seconds: 2,
              ),
              height: height,
              width: width,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                height = random.nextDouble() * 100;
                width = random.nextDouble() * 100;
                setState(() {});
              },
              child: const Text(
                'Change value',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
