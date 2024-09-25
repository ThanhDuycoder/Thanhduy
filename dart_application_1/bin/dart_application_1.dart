void main() {
  List<String> sinhVien = ['Nguyễn Thành A', 'Trần Văn B', 'Lê Hoàng C'];
  // print('Danh sách sinh viên ban đầu: ');
  // printsinhVien(sinhVien);
  sinhVien.addAll(['Vũ Minh D', 'Hoàng Ngọc E', 'Nguyễn Kim Thảo Vân']);
  // print("Danh sách sinh viên sau khi thêm : ");
  // printsinhVien(sinhVien);
  sinhVien.removeAt(4);
  // print("Danh sách sinh viên sau khi xóa: ");
  // printsinhVien(sinhVien);
  String timSinhVien = 'Nguyễn Kim Thảo Vân';
  int index = sinhVien.indexOf(timSinhVien);
  if (index != -1) {
    print('Vị trí của $timSinhVien là vị trí số: ${index + 1}');
  } else {
    print('Không có kết quả');
  }
  print('Số lương sinh viên hiện tại là: ${sinhVien.length}');
  print('Danh sách sinh viên: ');
  printsinhVien(sinhVien);
}

void printsinhVien(List<String> sinhVien) {
  for (int i = 0; i < sinhVien.length; i++) {
    print('${i + 1}. ${sinhVien[i]}');
  }
}

// int age = 19;
// var isMember = 'Member';
// var memberType = 'Gold';
// if (age < 12) {
//   print("Child ticket");
// } else if (age >= 12 && isMember == 'Member' && memberType == 'Gold') {
//   print("Gold Member Ticket");
// } else if (age >= 12 && isMember == 'Member' && memberType == 'Silver') {
//   print("Silver Member Ticket");
// } else {
//   print("Standard Ticket");
// }
// int age = 19;
// bool isRegistered = true;
// bool dieuKien = checkDangki(age, isRegistered);

// if (dieuKien) {
//   print("đủ điều kiện tham gia");
// } else {
//   print("không đủ điều kiện tham gia");
// }

// bool checkDangki(int age, bool isRegistered) {
//   return age > 18 && isRegistered;
// }
// int calculateFibonacy() => 1;
// var welcomeWolrd = 'Hello';
// welcomeWolrd += ', so good to see you';
// const boilingPoint = 100;
// double gradePointAvarage = 100;
// print(welcomeWolrd);
// var dung = true;
// var sai = false;
//   const pref = ' ';
//   var userPref = '';

//   switch (pref) {
//     case 'cookie':
//       userPref = 'Thích ăn cứt';
//       break;
//     default:
//       userPref = 'Thích ăn cái đb';
//   }
//   print(userPref);
