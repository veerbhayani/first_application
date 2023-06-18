import 'package:flutter/material.dart';

import 'genderform.controller.dart';

class GenderFormDemo extends StatefulWidget {
  const GenderFormDemo({super.key});
  @override
  State<GenderFormDemo> createState() => GenderFormDemoState();
}

class GenderFormDemoState extends State<GenderFormDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 30,
              ),
              child: Text(
                'Gender',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    OnSubmit.selectedGender = OnSubmit.male;
                    OnSubmit.isSubmited = false;
                    OnSubmit().onSubmitClear();
                    setState(() {});
                  },
                  child: Card(
                    elevation: OnSubmit.selectedGender == 'male' ? 50 : 0,
                    color: OnSubmit.selectedGender == 'male'
                        ? Colors.blue
                        : Colors.white,
                    child: const SizedBox(
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                          ),
                          Text('male'),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    OnSubmit.selectedGender = OnSubmit.female;
                    OnSubmit.isSubmited = false;
                    OnSubmit().onSubmitClear();
                    setState(() {});
                  },
                  child: Card(
                    elevation: OnSubmit.selectedGender == 'female' ? 50 : 0,
                    color: OnSubmit.selectedGender == 'female'
                        ? Colors.blue
                        : Colors.white,
                    child: const SizedBox(
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                          ),
                          Text('Female'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              child: Text(
                'Hobbies',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    OnSubmit.isCricket = !OnSubmit.isCricket;
                    setState(() {});
                  },
                  child: Card(
                    elevation: 35,
                    color: OnSubmit.isCricket ? Colors.cyan : Colors.white,
                    child: const SizedBox(
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sports_cricket,
                          ),
                          Text(
                            'Cricket',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    OnSubmit.isFootball = !OnSubmit.isFootball;
                    setState(() {});
                  },
                  child: Card(
                    elevation: 40,
                    color: OnSubmit.isFootball ? Colors.cyan : Colors.white,
                    child: const SizedBox(
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sports_football,
                          ),
                          Text(
                            'Football',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    OnSubmit.isGaming = !OnSubmit.isGaming;
                    setState(() {});
                  },
                  child: Card(
                    elevation: 40,
                    color: OnSubmit.isGaming ? Colors.cyan : Colors.white,
                    child: const SizedBox(
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sports_esports,
                          ),
                          Text(
                            'Gaming',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    OnSubmit.isBaseball = !OnSubmit.isBaseball;
                    setState(() {});
                  },
                  child: Card(
                    elevation: 40,
                    color: OnSubmit.isBaseball ? Colors.cyan : Colors.white,
                    child: const SizedBox(
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sports_baseball_sharp,
                          ),
                          Text(
                            'Baseball',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    OnSubmit.isCooking = !OnSubmit.isCooking;
                    setState(() {});
                  },
                  child: Card(
                    elevation: 40,
                    color: OnSubmit.isCooking ? Colors.cyan : Colors.white,
                    child: const SizedBox(
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cookie,
                          ),
                          Text(
                            'Cooking',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      OnSubmit().hobbies();
                      OnSubmit.isSubmited = !OnSubmit.isSubmited;
                      setState(() {});
                    },
                    child: const Text(
                      'Submit',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: OnSubmit.isSubmited
                  ? Container(
                      padding: const EdgeInsets.all(30),
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) => Text(
                          'Gender is ${OnSubmit.selectedGender}\nHobbies are ${OnSubmit.selectedHobbies}',
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
