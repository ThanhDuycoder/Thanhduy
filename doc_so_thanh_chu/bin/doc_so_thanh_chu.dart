import 'dart:io';

String numberToWords(int num) {
  if (num < 0 || num > 999) {
    return "out of ability";
  }
  if (num < 10) {
    switch (num) {
      case 0:
        return "zero";
      case 1:
        return "one";
      case 2:
        return "two";
      case 3:
        return "three";
      case 4:
        return "four";
      case 5:
        return "five";
      case 6:
        return "six";
      case 7:
        return "seven";
      case 8:
        return "eight";
      case 9:
        return "nine";
      default:
        return ""; // This should never happen
    }
  }
  if (num >= 10 && num < 20) {
    switch (num) {
      case 10:
        return "ten";
      case 11:
        return "eleven";
      case 12:
        return "twelve";
      case 13:
        return "thirteen";
      case 14:
        return "fourteen";
      case 15:
        return "fifteen";
      case 16:
        return "sixteen";
      case 17:
        return "seventeen";
      case 18:
        return "eighteen";
      case 19:
        return "nineteen";
      default:
        return ""; // This should never happen
    }
  }
  if (num >= 20 && num < 100) {
    int tens = num ~/ 10;
    int ones = num % 10;
    String tensWord = "";
    String onesWord = "";
    switch (tens) {
      case 2:
        tensWord = "twenty";
        break;
      case 3:
        tensWord = "thirty";
        break;
      case 4:
        tensWord = "forty";
        break;
      case 5:
        tensWord = "fifty";
        break;
      case 6:
        tensWord = "sixty";
        break;
      case 7:
        tensWord = "seventy";
        break;
      case 8:
        tensWord = "eighty";
        break;
      case 9:
        tensWord = "ninety";
        break;
    }
    if (ones > 0) {
      onesWord = numberToWords(ones);
    }
    return tensWord + (onesWord.isNotEmpty ? " $onesWord" : "");
  }
  if (num >= 100) {
    int hundreds = num ~/ 100;
    int remainder = num % 100;
    String hundredsWord = "${numberToWords(hundreds)} hundred";
    String remainderWord =
        remainder > 0 ? "and ${numberToWords(remainder)}" : "";
    return hundredsWord + (remainderWord.isNotEmpty ? " $remainderWord" : "");
  }
  return ""; // This should never happen
}

void main() {
  print("Enter a number (0-999):");
  String? input = stdin.readLineSync();
  if (input != null) {
    int number = int.tryParse(input) ?? -1;
    print(numberToWords(number));
  } else {
    print("Invalid input");
  }
}
