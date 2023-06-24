import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool isOn = false, isON2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('isActive'),
              Switch(
                  value: isOn,
                  inactiveThumbColor: Colors.red,
                  activeColor: Colors.blue,
                  splashRadius: 20,
                  onChanged: (value) {
                    isOn = value;
                    setState(() {});
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('isActive'),
              CupertinoSwitch(
                  applyTheme: true,
                  trackColor: Colors.black,
                  activeColor: Colors.green,
                  value: isON2,
                  onChanged: (value) {
                    isON2 = value;
                    setState(() {});
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
