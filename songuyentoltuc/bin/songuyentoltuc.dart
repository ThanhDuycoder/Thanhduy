bool soNguyenTo(int n) {
  if (n <= 1) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  int numbers = 20;
  int count = 0;
  int n = 2;
  while (count < numbers) {
    if (soNguyenTo(n)) {
      print(n);
      count++;
    }
    n++;
  }
}
