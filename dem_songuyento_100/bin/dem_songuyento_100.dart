import 'dart:math';

bool soNguyenTo(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(num); i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

void showSoNguyenToDuoi100() {
  print('Các số nguyên tố dưới 100 là:');
  for (int i = 2; i < 100; i++) {
    if (soNguyenTo(i)) {
      print(i);
    }
  }
}

void main() {
  showSoNguyenToDuoi100();
}
