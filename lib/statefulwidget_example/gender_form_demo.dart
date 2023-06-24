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
      backgroundColor: OnSubmit.isSubmited ? Colors.black : Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Text(
                'Gender',
                style: TextStyle(
                  fontSize: 35,
                  color: OnSubmit.isSubmited ? Colors.white : Colors.black,
                  fontFamily: 'Dancing Script',
                  fontWeight: FontWeight.w400,
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
                    shadowColor:
                        OnSubmit.isSubmited ? Colors.white : Colors.black,
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
                    shadowColor:
                        OnSubmit.isSubmited ? Colors.white : Colors.black,
                    elevation: OnSubmit.selectedGender == 'female' ? 25 : 0,
                    color: OnSubmit.selectedGender == 'female'
                        ? Colors.pink
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
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              child: Text(
                'Hobbies',
                style: TextStyle(
                  color: OnSubmit.isSubmited ? Colors.white : Colors.black,
                  fontSize: 35,
                  fontFamily: 'Dancing Script',
                  fontWeight: FontWeight.w400,
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
                    shadowColor:
                        OnSubmit.isSubmited ? Colors.white : Colors.black,
                    elevation: OnSubmit.isCricket ? 35 : 0,
                    color: OnSubmit.isCricket ? Colors.blue : Colors.white,
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
                    shadowColor:
                        OnSubmit.isSubmited ? Colors.white : Colors.black,
                    elevation: OnSubmit.isFootball ? 35 : 0,
                    color: OnSubmit.isFootball
                        ? Colors.purpleAccent
                        : Colors.white,
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
                    shadowColor:
                        OnSubmit.isSubmited ? Colors.white : Colors.black,
                    elevation: OnSubmit.isGaming ? 35 : 0,
                    color: OnSubmit.isGaming ? Colors.pink : Colors.white,
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
                    shadowColor:
                        OnSubmit.isSubmited ? Colors.white : Colors.black,
                    elevation: OnSubmit.isBaseball ? 35 : 0,
                    color: OnSubmit.isBaseball ? Colors.orange : Colors.white,
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
                    shadowColor:
                        OnSubmit.isSubmited ? Colors.white : Colors.black,
                    elevation: OnSubmit.isCooking ? 35 : 0,
                    color: OnSubmit.isCooking ? Colors.green : Colors.white,
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
                  (OnSubmit.selectedGender == 'male' ||
                          OnSubmit.selectedGender == 'female')
                      ? MaterialButton(
                          color:
                              OnSubmit.isSubmited ? Colors.blue : Colors.white,
                          onPressed: () {
                            OnSubmit().hobbies();
                            OnSubmit.isSubmited = !OnSubmit.isSubmited;
                            setState(() {});
                          },
                          child: const Text(
                            'Submit',
                          ),
                        )
                      : MaterialButton(
                          color:
                              OnSubmit.isSubmited ? Colors.blue : Colors.white,
                          onPressed: () {},
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
                      color: OnSubmit.isSubmited ? Colors.black : Colors.white,
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) => Text(
                          'Gender is ${OnSubmit.selectedGender}\nHobbies are ${OnSubmit.selectedHobbies}',
                          style: TextStyle(
                            fontSize: 25,
                            color: OnSubmit.isSubmited
                                ? Colors.white
                                : Colors.black,
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
