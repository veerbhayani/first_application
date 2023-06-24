import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 350,
        width: 350,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(55),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: const BorderRadius.all(
            Radius.circular(180),
          ),
          border: Border.all(
              color: Colors.red,
              width: 20,
              strokeAlign: 2,
              style: BorderStyle.solid),
          // borderRadius: const BorderRadius.horizontal(
          //   left: Radius.circular(100),
          // ),
          gradient: const LinearGradient(
            colors: [Colors.green, Colors.red],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.2],
          ),
          // gradient: const RadialGradient(
          //colors: [
          //   Colors.indigo,
          //   Colors.cyan,
          //   Colors.blueAccent,
          //   Colors.green,
          //   Colors.yellow,
          //   Colors.orange,
          //   Colors.red
          // ], radius: 0.54, focalRadius: 15),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              color: Colors.yellowAccent,
              offset: Offset(5, 5),
              blurStyle: BlurStyle.outer,
              spreadRadius: 1,
            ),
          ],
          image: const DecorationImage(
            image: NetworkImage(
                'https://m.media-amazon.com/images/I/61OdphAhmcL._UY741_.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        transform: Matrix4.rotationX(0.5)..rotateY(0.7),
        transformAlignment: Alignment.centerRight,
        child: const Text(
          'Viraj Bhayani',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
