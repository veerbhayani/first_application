import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  const SimpleDialogDemo({super.key});

  @override
  State<SimpleDialogDemo> createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: MaterialButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: true,
                  useSafeArea: true,
                  context: context,
                  builder: (context) => const SimpleDialog(
                    title: Text(
                      'Simple Dialog Title',
                    ),
                    alignment: Alignment.topCenter,
                    backgroundColor: Colors.amber,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 50,
                    ),
                    elevation: 20,
                    insetPadding: EdgeInsets.all(
                      20,
                    ),
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(),
                    surfaceTintColor: Colors.brown,
                    children: [
                      Text(
                        'Viraj',
                      ),
                      Text(
                        'Girishbhai',
                      ),
                      Text(
                        'Bhayani',
                      ),
                    ],
                  ),
                );
                setState(() {});
              },
              color: Colors.blue,
              child: const Text(
                'Show Simple Dialog',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MaterialButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text(
                    'Alert Dialog',
                  ),
                  content: const Text(
                    'Are you sure , You Want to Exit?',
                  ),
                  actionsAlignment: MainAxisAlignment.center,
                  actionsOverflowAlignment: OverflowBarAlignment.start,
                  actionsOverflowButtonSpacing: 10,
                  actionsOverflowDirection: VerticalDirection.down,
                  actionsPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  alignment: Alignment.center,
                  buttonPadding: const EdgeInsets.all(
                    20,
                  ),
                  backgroundColor: Colors.amber,
                  contentPadding: const EdgeInsets.all(
                    10,
                  ),
                  contentTextStyle: const TextStyle(
                    color: Colors.blue,
                  ),
                  elevation: 20,
                  icon: const Icon(
                    Icons.add,
                  ),
                  iconColor: Colors.blue,
                  iconPadding: const EdgeInsets.all(
                    20,
                  ),
                  // insetPadding: ,
                  scrollable: true,
                  // shadowColor: ,
                  // shape:  ,
                  // titlePadding: ,
                  // titleTextStyle:  ,

                  actions: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {});
                      },
                      color: Colors.blue,
                      child: const Text(
                        'Cancle',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {});
                      },
                      color: Colors.blue,
                      child: const Text(
                        'Exit',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
              setState(() {});
            },
            color: Colors.blue,
            child: const Text(
              'Show Alert Dialog',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Text(
                    'Alert Dialog',
                  ),
                  content: const Text(
                    'Are you sure, You Want To Exit',
                  ),
                  insetAnimationCurve: Curves.fastOutSlowIn,
                  insetAnimationDuration: const Duration(
                    seconds: 10,
                  ),
                  actions: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {});
                      },
                      color: Colors.blue,
                      child: const Text(
                        'Cancle',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {});
                      },
                      color: Colors.blue,
                      child: const Text(
                        'Exit',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
              setState(() {});
            },
            child: const Text(
              'Show Cupertino Dialog',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AboutDialog(
                  applicationLegalese: 'Terms And Conditions Apply',
                  applicationIcon: const Icon(
                    Icons.contact_emergency,
                  ),
                  applicationName: 'Terms & Conditions',
                  applicationVersion: '1.0.2',
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Text('Click here'),
                    ),
                  ],
                ),
              );
              setState(() {});
            },
            child: const Text(
              'Show About Dialog',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Simple Dialog Properties
// alignment: ,
// backgroundColor: ,
// contentPadding: ,
// elevation: ,
// insetPadding: ,
// shadowColor: ,
// shape: ,
// surfaceTintColor: ,

// Alert Dialog Properties
// actionsAlignment: ,
// actionsOverflowAlignment: ,
// actionsOverflowButtonSpacing: ,
// actionsOverflowDirection:  ,
// actionsPadding: ,
// alignment: ,
// buttonPadding: ,
// backgroundColor:  ,
// contentPadding: ,
// contentTextStyle: ,
// elevation: ,
// icon: ,
// iconColor:  ,
// iconPadding:  ,
// insetPadding: ,
// scrollable:  ,
// shadowColor: ,
// shape:  ,
// titlePadding: ,
// titleTextStyle:  ,
