class Hobbies {
  static bool isSubmited = false;
  static List isTrue = List.generate(hobbiesDetails.length, (index) => false);
  static List hobbiesDetails = [
    'Cricket',
    'Football',
    'Soccer',
    'Baseball',
    'Gaming',
    'Coding',
    'BasketBall',
    'Kabbadi',
    'Vollyball',
    'Dancing',
    'Playing',
    'Tracking',
    'Swimming'
  ];

  static List selectedHobbies = [];
  static void checkIsTrue() {
    for (int i = 0; i < isTrue.length; i++) {
      if (isTrue[i] == true) {
        selectedHobbies.add(
          hobbiesDetails[i],
        );
      }
    }
  }

  static void onSubmit() {
    if (isSubmited == true) {
      selectedHobbies.clear();
      isTrue = List.generate(hobbiesDetails.length, (index) => false);
    }
  }
}
