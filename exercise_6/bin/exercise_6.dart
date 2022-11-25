import 'dart:math';

void checkNguyenTo(int number, List<int> listNguyenTo) {
  int count = 0;

  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) count++;
  }

  if (count == 0) {
    listNguyenTo.add(number);
  }
}

void main() {
  int n = 20;
  List<int> listNguyenTo = [];

  for (int i = 2; i <= n; i++) {
    checkNguyenTo(i, listNguyenTo);
  }

  print(listNguyenTo);
}