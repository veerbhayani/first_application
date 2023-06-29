class CheckPalindromeNumber {
  static String palindromeNumber(int a) {
    int temp = 0;
    int rev = 0;
    int rem = 0;

    temp = a;

    while (a > 0) {
      rem = a % 10;
      rev = rev * 10 + rem;
      a = a ~/ 10;
    }
    if (temp == rev) {
      return ("Palindrome Number");
    } else {
      return ("Not Palindrome Number");
    }
  }
}
