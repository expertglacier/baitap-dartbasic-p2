class KeywordStatic {
  static String staticString = "Hello";
}

int tinhGiaiThua(int number) {
  int result = 1;
  
  for (int i = 1; i <= number; i++) {
    result *= i;
  }

  return result;
}

String intToString(int input) => input.toString();
String doubleToString(double input) => input.toString();
int stringToInt(String input) => int.parse(input);
double stringToDouble(String input) => double.parse(input);
int doubleToInt(double input) => input.toInt();
double intToDouble(int input) => input.toDouble();

void main() {
  // 1. Khai báo toàn bộ các kiểu dữ liệu: Non-Nullable Types và Nullable Types, dynamic, var.
  // Non-Nullable Types.
  String strNonNull = "Hello World";
  int intNonNull = 1;
  double doubleNonNull = 1.2;
  num numNonNull = 1;
  List<String> listNonNull = ["a", "b", "c"];
  Map<String, String> mapNonNull = {
    'key': 'value'
  };
  bool boolNonNull = true;
  
  // Nullable Types.
  String? strNull = null;
  int? intNull = null;
  double? doubleNull = null;
  num? numNull = null;
  List? listNull = null;
  Map? mapNull = null;

  // dynamic, var.
  var typeVar = 50;
  dynamic typeDynamic = 50;

  // 2. Có sử dụng các từ khoá static, final, late const.
  final keyFinal = 1;
  late int keywordLate = 1;
  const PI = 3.14;

  // 3. Viết một hàm tính giai thừa của 6.
  int result = tinhGiaiThua(6);
  print("6! = $result");

  // 4. Viết các hàm chuyển đổi qua lại giữa string, int, double.
  intToString(1);
  doubleToString(1.2);
  stringToInt("1");
  stringToDouble("1.2");
  doubleToInt(1.1);
  intToDouble(1);
}
