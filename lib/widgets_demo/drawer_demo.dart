import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gmail'),
        // leading: const Icon(Icons.menu),

        // If Leading use in Appbar then can't able to use drawer

        // actions: const [
        //   Icon(Icons.abc),
        // ],

        // If Action use in Appbar then can't able to use endDrawer
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            Icon(
              Icons.apartment,
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(),
    );
  }
}
