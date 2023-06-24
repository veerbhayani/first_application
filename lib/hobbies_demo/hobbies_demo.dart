import 'package:first_application/hobbies_demo/hobbies.controller.dart';
import 'package:flutter/material.dart';

class HobbiesDemo extends StatefulWidget {
  const HobbiesDemo({super.key});

  @override
  State<HobbiesDemo> createState() => _HobbiesDemoState();
}

class _HobbiesDemoState extends State<HobbiesDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Hobbies',
                style: TextStyle(
                  fontFamily: 'Dancing Script',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: Hobbies.hobbiesDetails.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: Hobbies.isTrue[index],
                            onChanged: (value) {
                              Hobbies.isTrue[index] = value!;
                              setState(() {});
                            },
                          ),
                          Text(
                            Hobbies.hobbiesDetails[index].toString(),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            MaterialButton(
              onPressed: () {
                Hobbies.checkIsTrue();
                Hobbies.onSubmit();
                Hobbies.isSubmited = !Hobbies.isSubmited;
                setState(() {});
              },
              color: Colors.blue,
              child: const Text(
                'submit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Hobbies.isSubmited
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Text(
                          Hobbies.selectedHobbies.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
