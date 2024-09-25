void main() {
  int age = 19;
  bool isRegistered = true;
  bool dieuKien = checkDangki(age, isRegistered);
  if (dieuKien) {
    print("đủ điều kiện tham gia");
  } else {
    print("không đủ điều kiện tham gia");
  }
}

bool checkDangki(int age, bool isRegistered) {
  return age > 18 && isRegistered;
}
