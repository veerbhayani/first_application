import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue[200],
            image: const DecorationImage(
              image: AssetImage('assets/images/profile.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
