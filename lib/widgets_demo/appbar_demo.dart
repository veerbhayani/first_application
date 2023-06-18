import 'package:flutter/material.dart';

class AppbarDemo extends StatelessWidget {
  const AppbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar Demo'),
        leading: const Icon(Icons.abc),
        // automaticallyImplyLeading: false,
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Row(),
        ),
        bottomOpacity:
            0.0, // opacity of bottom , 0.0 is fully transparent and 1.0 is fully opaque
        elevation: 100, // Shadows under appbar
        flexibleSpace: const Icon(Icons
            .abc_outlined), //This widget is stacked behind the toolbar and the tab bar. Its height will be the same as the app bar's overall height.
        leadingWidth: 100,
        // shadowColor: Colors.amber,
        // shape: Border.all(),
        surfaceTintColor: Colors.red,
        titleSpacing: 100,
        titleTextStyle: const TextStyle(
          fontSize: 15,
        ),
        toolbarHeight: 100,
        toolbarOpacity: 0.9,
        toolbarTextStyle: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
