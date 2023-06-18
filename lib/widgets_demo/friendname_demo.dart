import 'package:flutter/material.dart';

class FriendNameDemo extends StatelessWidget {
  const FriendNameDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Viraj"),
                  Text("Girishbhai"),
                  Text("Bhayani"),
                ],
              ),
              Column(
                children: [
                  Text("Ansh"),
                  Text("Nileshbhai"),
                  Text("Chaniyara"),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Mintan"),
                  Text("Kanjibhai"),
                  Text("Lathiya"),
                ],
              ),
              Column(
                children: [
                  Text("Vishal"),
                  Text("Shantibhai"),
                  Text("Mavani"),
                ],
              ),
              Column(
                children: [
                  Text("Hardik"),
                  Text("Vinubhai"),
                  Text("Suvagiya"),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("Janak"),
                  Text("Rakeshbhai"),
                  Text("Sabhadiya"),
                ],
              ),
              Column(
                children: [
                  Text("Ashish"),
                  Text("Kalubhai"),
                  Text("Chothani"),
                ],
              ),
              Column(
                children: [
                  Text("Manish"),
                  Text("Rajubhai"),
                  Text("Bhimani"),
                ],
              ),
              Column(
                children: [
                  Text("Rakesh"),
                  Text("Sureshbhai"),
                  Text("Borada"),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("Suresh"),
                  Text("Borad"),
                ],
              ),
              Column(
                children: [
                  Text("Sahil"),
                  Text("Borada"),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Amit')],
          ),
        ],
      ),
    );
  }
}
