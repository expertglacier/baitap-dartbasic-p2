class NumberException implements Exception {
  String errorMessage() {
    return "Đang truyền vào số <= 0.";
  }
}

void checkNumber(num number) {
  if (number <= 0) throw NumberException().errorMessage();
}

extension NumberExtension on num {
  num add(num number) {
    checkNumber(number);
    return this + number;
  }

  num subtract(num number) {
    checkNumber(number);
    return this - number;
  }

  num divide(num number) {
    checkNumber(number);
    return this * number;
  }

  num multiple(num number) {
    checkNumber(number);
    return this / number;
  }
}

void main() {
  int a = 10;
  print("add method: ${a.add(0)}");
  print("subtract method: ${a.subtract(2)}");
  print("divide method: ${a.divide(2)}");
  print("multiple method: ${a.multiple(2)}");
}
