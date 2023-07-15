import 'package:flutter/material.dart';

class HeroDemo extends StatefulWidget {
  const HeroDemo({super.key});

  @override
  State<HeroDemo> createState() => _HeroDemoState();
}

class _HeroDemoState extends State<HeroDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPage(),
                  ));
            });
          },
          child: Hero(
            tag: 'backGround',
            child: Image.asset(
              'assets/images/profile.jpeg',
              height: 100,
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            setState(() {});
          },
          child: Hero(
            tag: 'backGround',
            child: Image.asset(
              'assets/images/profile.jpeg',
            ),
          ),
        ),
      ),
    );
  }
}
