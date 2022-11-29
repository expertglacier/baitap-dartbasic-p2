import 'dart:math';

bool checkNguyenTo(int number) {
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  int n = 20;
  List<int> listNguyenTo = [];

  for (int i = 2; i <= n; i++) {
    if (checkNguyenTo(i)) listNguyenTo.add(i);
  }

  print(listNguyenTo);
}
