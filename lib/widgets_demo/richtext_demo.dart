// import 'package:flutter/material.dart';

// class RichTextDemo extends StatelessWidget {
//   const RichTextDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RichText(
//               text: TextSpan(
//                 text: 'G',
//                 style: TextStyle(
//                   color: Colors.blue[300],
//                   fontSize: 100,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             RichText(
//               text: TextSpan(
//                 text: 'o',
//                 style: TextStyle(
//                   color: Colors.red[300],
//                   fontSize: 100,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             RichText(
//               text: TextSpan(
//                 text: 'o',
//                 style: TextStyle(
//                   color: Colors.yellow[300],
//                   fontSize: 100,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             RichText(
//               text: TextSpan(
//                 text: 'g',
//                 style: TextStyle(
//                   color: Colors.blue[300],
//                   fontSize: 100,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             RichText(
//               text: TextSpan(
//                 text: 'l',
//                 style: TextStyle(
//                   color: Colors.green[300],
//                   fontSize: 100,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             RichText(
//               text: TextSpan(
//                 text: 'e',
//                 style: TextStyle(
//                   color: Colors.red[300],
//                   fontSize: 100,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'G',
                    style: TextStyle(
                      color: Colors.blue[300],
                      fontSize: 100,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: 'o',
                    style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 100,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: 'o',
                    style: TextStyle(
                      color: Colors.yellow[300],
                      fontSize: 100,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: 'g',
                    style: TextStyle(
                      color: Colors.blue[300],
                      fontSize: 100,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: 'l',
                    style: TextStyle(
                      color: Colors.green[300],
                      fontSize: 100,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            RotationTransition(
              turns: const AlwaysStoppedAnimation(20 / -600),
              child: Text(
                'e',
                style: TextStyle(
                  color: Colors.red[300],
                  fontSize: 100,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
