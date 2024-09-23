import 'dart:io';
import 'package:intl/intl.dart';

void main() {
  double rate = 24640;
  var formatNumber = NumberFormat('#,###,###');
  while (true) {
    print('Nhập số USD cần chuyển sang VND:');
    String? input = stdin.readLineSync();
    double usd;
    try {
      usd = double.parse(input!);
    } catch (e) {
      print("Lỗi !!!!!!!! yêu cầu nhập đúng giá trị ");
      continue;
    }
    double vnd = rate * usd;
    print('$usd USD = ${formatNumber.format(vnd)} VND');
    break;
  }
}
