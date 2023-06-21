import 'package:first_application/pageview.builder.controller.dart';
import 'package:flutter/material.dart';

class PageViewBuilderDemo extends StatefulWidget {
  const PageViewBuilderDemo({super.key});

  @override
  State<PageViewBuilderDemo> createState() => _PageViewBuilderDemoState();
}

class _PageViewBuilderDemoState extends State<PageViewBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: Data.imageUrl.length,
        itemBuilder: (context, index) => Image(
          image: NetworkImage(
            Data.imageUrl[index],
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
