class Hobbies {
  static bool isSubmited = false;
  static List isTrue = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
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
    'Dancing'
  ];

  static List selectedHobbies = [];
  static void checkIsTrue() {
    for (int i = 0; i < isTrue.length - 1; i++) {
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
      isTrue = [
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
      ];
    }
  }
}
