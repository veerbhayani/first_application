class OnSubmit {
//  ********* gender variables *********//
  static String male = 'male';
  static String female = 'female';
  static String selectedGender = '';

// ********* hobbies variables *********//
  static bool isCricket = false;
  static bool isFootball = false;
  static bool isGaming = false;
  static bool isBaseball = false;
  static bool isCooking = false;
  static List<String> selectedHobbies = [];
  static bool isSubmited = false;

  void hobbies() {
    if (isCricket) {
      selectedHobbies.add('Cricket');
    }
    if (isFootball) {
      selectedHobbies.add('Football');
    }
    if (isGaming) {
      selectedHobbies.add('Gaming');
    }
    if (isBaseball) {
      selectedHobbies.add('Baseball');
    }
    if (isCooking) {
      selectedHobbies.add('Cooking');
    }
  }

  void onSubmitClear() {
    if (isSubmited == false) {
      selectedHobbies.clear();
    }
  }
}
