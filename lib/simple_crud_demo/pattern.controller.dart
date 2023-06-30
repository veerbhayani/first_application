import 'package:flutter/material.dart';

class Patterns {
  static String? displayPatterns;
  static final TextEditingController _patternsController =
      TextEditingController();

  static TextEditingController get txtPatternController => _patternsController;

  static List<Map<String, dynamic>> allPatterns = [
    {
      'patternCount': 'Pattern 1',
      'function': (int a) => pattern1(a),
    },
    {
      'patternCount': 'Pattern 2',
      'function': (int a) => pattern2(a),
    },
    {
      'patternCount': 'Pattern 3',
      'function': (int a) => pattern3(a),
    },
    {
      'patternCount': 'Pattern 4',
      'function': (int a) => pattern4(a),
    },
    {
      'patternCount': 'Pattern 5',
      'function': (int a) => pattern5(a),
    },
    {
      'patternCount': 'Pattern 6',
      'function': (int a) => pattern6(a),
    },
    {
      'patternCount': 'Pattern 7',
      'function': (int a) => pattern7(a),
    },
    {
      'patternCount': 'Pattern 8',
      'function': (int a) => pattern8(a),
    },
    {
      'patternCount': 'Pattern 9',
      'function': (int a) => pattern9(a),
    },
    {
      'patternCount': 'Pattern 10',
      'function': (int a) => pattern10(a),
    },
    {
      'patternCount': 'Pattern 11',
      'function': (int a) => pattern11(a),
    },
    {
      'patternCount': 'Pattern 12',
      'function': (int a) => pattern12(a),
    },
    {
      'patternCount': 'Pattern 13',
      'function': (int a) => pattern13(a),
    },
    {
      'patternCount': 'Pattern 14',
      'function': (int a) => pattern14(a),
    },
    {
      'patternCount': 'Pattern 15',
      'function': (int a) => pattern15(a),
    },
    {
      'patternCount': 'Pattern 16',
      'function': (int a) => pattern16(a),
    },
    {
      'patternCount': 'Pattern 17',
      'function': (int a) => pattern17(a),
    },
    {
      'patternCount': 'Pattern 18',
      'function': (int a) => pattern18(a),
    },
    {
      'patternCount': 'Pattern 19',
      'function': (int a) => pattern19(a),
    },
    {
      'patternCount': 'Pattern 20',
      'function': (int a) => pattern20(a),
    },
    {
      'patternCount': 'Pattern 21',
      'function': (int a) => pattern21(a),
    },
    {
      'patternCount': 'Pattern 22',
      'function': (int a) => pattern22(a),
    },
    {
      'patternCount': 'Pattern 23',
      'function': (int a) => pattern23(a),
    },
    {
      'patternCount': 'Pattern 24',
      'function': (int a) => pattern24(a),
    },
  ];

  static void getPattern(int index, {required String value}) {
    if (Patterns.allPatterns[index]['patternCount'] == 'Pattern 8') {
      displayPatterns = Patterns.allPatterns[7]['function'](
        45,
      );
    } else if (Patterns.allPatterns[index]['patternCount'] == 'Pattern 22') {
      displayPatterns = Patterns.allPatterns[21]['function'](
        65,
      );
    } else {
      displayPatterns = Patterns.allPatterns[index]['function'](
        int.parse(value),
      );
    }
  }

  static String pattern1(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      for (int j = 1; j <= i; j++) {
        n = n + j.toString();
      }
      n += '\n';
    }
    return n;
  }

  static String pattern2(int a) {
    String n = '';

    for (int i = a; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        n = n + j.toString();
      }
      n += '\n';
    }
    return (n);
  }

  static String pattern3(int a) {
    String n = '';
    for (int i = a; i >= 1; i--) {
      for (int j = a; j >= i; j--) {
        n = n + j.toString();
      }
      n += '\n';
    }
    return (n);
  }

  static String pattern4(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      for (int j = i; j >= 1; j--) {
        n = n + j.toString();
      }
      n += '\n';
    }
    return (n);
  }

  static String pattern5(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      for (int j = a; j >= i; j--) {
        n = n + j.toString();
      }
      n += '\n';
    }
    return (n);
  }

  static String pattern6(int a) {
    String n = '';
    for (int i = a; i >= 1; i--) {
      for (int j = i; j >= 1; j--) {
        n = n + j.toString();
      }
      n += '\n';
    }
    return (n);
  }

  static String pattern7(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      for (int j = i; j <= a; j++) {
        n = n + j.toString();
      }
      n += '\n';
    }
    return (n);
  }

  static String pattern8(int a) {
    String n = '';
    for (int i = a; i <= 49; i++) {
      for (int j = a; j <= i; j++) {
        n = n + j.toString();
      }
      n += '\n';
    }
    return (n);
  }

  static String pattern9(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      for (int j = 1; j <= i; j++) {
        n = n + i.toString();
      }
      n += '\n';
    }
    return (n);
  }

  static String pattern10(int a) {
    String n = '';
    for (int i = a; i >= 1; i--) {
      for (int j = a; j >= i; j--) {
        n = n + i.toString();
      }
      n += '\n';
    }
    return (n);
  }

  static String pattern11(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      n += '  ' * (a - i);
      for (int j = 1; j <= i; j++) {
        n = n + j.toString();
      }
      n += '\n';
    }
    return n;
  }

  static String pattern12(int a) {
    String n = '';
    for (int i = a; i >= 1; i--) {
      n += '  ' * (a - i);
      for (int j = 1; j <= i; j++) {
        n += j.toString();
      }

      n += '\n';
    }

    return n;
  }

  static String pattern13(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      n += '  ' * (a + i - a);
      for (int j = i; j <= a; j++) {
        n += j.toString();
      }
      n += ' ' * (i);
      n += '\n';
    }

    return n;
  }

  static String pattern14(int a) {
    String n = '';
    for (int i = a; i >= 1; i--) {
      n += '  ' * (i - 1);
      for (int j = i; j <= a; j++) {
        n += j.toString();
      }
      n += '\n';
    }

    return n;
  }

  static String pattern15(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      n += '  ' * (a - i);
      for (int j = i; j >= 1; j--) {
        n += j.toString();
      }
      n += '\n';
    }

    return n;
  }

  static String pattern16(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      for (int j = i; j >= 1; j--) {
        n += j.toString();
      }
      n += '\n';
    }

    for (int i = a - 1; i >= 1; i--) {
      for (int j = i; j >= 1; j--) {
        n += j.toString();
      }
      n += '\n';
    }

    return n;
  }

  static String pattern17(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      n += '  ' * (a - i);
      for (int j = 1; j <= i; j++) {
        n += j.toString();
      }
      n += '\n';
    }

    for (int i = 2; i <= a; i++) {
      n += '  ' * (i - 1);
      for (int j = i; j <= a; j++) {
        n += j.toString();
      }
      n += '\n';
    }

    return n;
  }

  static String pattern18(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      for (int j = 1; j <= i; j++) {
        n = n + j.toString();
      }
      n += '     ' * (a - i);
      for (int j = i; j >= 1; j--) {
        n += j.toString();
      }
      n += '\n';
    }
    return n;
  }

  static String pattern19(int a) {
    String n = '';

    for (int i = a; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        n = n + j.toString();
      }
      n += '     ' * (a - i);
      for (int j = i; j >= 1; j--) {
        n += j.toString();
      }
      n += '\n';
    }
    for (int i = 2; i <= a; i++) {
      for (int j = 1; j <= i; j++) {
        n = n + j.toString();
      }
      n += '     ' * (a - i);
      for (int j = i; j >= 1; j--) {
        n += j.toString();
      }
      n += '\n';
    }
    return n;
  }

  static String pattern20(int a) {
    String image = '';
    List data = [
      [0, 0, 0, 0, 1, 0, 0, 0, 0],
      [0, 0, 0, 1, 0, 1, 0, 0, 0],
      [0, 0, 1, 0, 0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0, 0, 0, 1, 0],
      [1, 0, 0, 0, 0, 0, 0, 0, 1],
    ];
    for (var i in data) {
      for (var d in i) {
        if (d == 0) {
          image += '   ';
        } else {
          image += '*';
        }
      }
      image += '\n';
    }
    return (image);
  }

  static String pattern21(int a) {
    int b = 1;
    String n = '';
    for (int i = 1; i <= a; i++) {
      for (int j = 1; j <= i; j++) {
        n = n + b.toString();
        b++;
      }
      n += '\n';
    }
    return n;
  }

  static String pattern22(int a) {
    String n = '';
    for (int i = 65; i <= 69; i++) {
      for (int j = 65; j <= i; j++) {
        n += String.fromCharCode(i);
      }
      n += '\n';
    }
    return n;
  }

  static String pattern23(int a) {
    String n = '';
    for (int i = 1; i <= a; i++) {
      for (int j = 1; j <= i; j++) {
        n = n + (j % 2).toString();
      }
      n += '\n';
    }
    return n;
  }

  static String pattern24(int a) {
    String n = '';
    String m = '';
    for (int i = a; i >= 1; i--) {
      n += '   ' * (a + i);
      for (int j = a; j >= i; j--) {
        n = n + j.toString();
      }
      for (int j = i + 1; j <= a; j++) {
        m = m + j.toString();
        n += j.toString();
      }
      n += '\n';
    }
    return n;
  }
}
