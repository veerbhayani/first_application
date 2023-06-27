import 'package:flutter/material.dart';

class SubscriptionNavigation extends StatefulWidget {
  const SubscriptionNavigation({super.key});

  @override
  State<SubscriptionNavigation> createState() => _SubscriptionNavigationState();
}

class _SubscriptionNavigationState extends State<SubscriptionNavigation> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Subscription Content Here',
      ),
    );
  }
}
