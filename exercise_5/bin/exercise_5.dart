List<int> addList(List<int> inputList) {
  for (int i = 0; i <= 100; i++) {
    inputList.add(i);
  }

  return inputList;
}

List<int> oddNumberList(List<int> inputList, List<int> oddList) {
  for (int i = 0; i < inputList.length; i++) {
    if (i % 2 != 0) oddList.add(i);
  }
  
  return oddList;
}

List<int> evenNumberList(List<int> inputList, List<int> evenList) {
  for (int i = 0; i < inputList.length; i++) {
    if (i % 2 == 0) evenList.add(i);
  }
  
  return evenList;
}

void main() {
  List<int> inputList = [];
  List<int> oddList = [];
  List<int> evenList = [];
  
  addList(inputList);
  oddNumberList(inputList, oddList);
  evenNumberList(inputList, evenList);

  String output = (0 % 2 == 0) ? "0 là số chẵn." : "0 là số lẻ.";
  print(output);
}
