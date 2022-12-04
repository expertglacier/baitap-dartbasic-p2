void main() {
  Flutter flutter = Flutter(11, ["A", "B"]);
  print("Tên lớp học: ${flutter.tenLopHoc}");
  print("Số lượng học viên: ${flutter.soLuongHocVien}");
  print("List học viên: ${flutter.listTenHocVien}");
  print("Tính năng flutter: ${flutter.buildAndroid()}, ${flutter.buildIOS()}, ${flutter.buildWeb()}, ${flutter.buildDesktopApp()}.");
  print("Số học viên Flutter còn thiếu là: ${remainMember(flutter.soLuongHocVien, flutter.listTenHocVien)}");
  addMember(flutter.soLuongHocVien, flutter.listTenHocVien);
  print("List học viên sau khi thêm đủ học viên: ${flutter.listTenHocVien}");

  Android android = Android(12, ["B", "C", "D"]);
  print("\nTên lớp học: ${android.tenLopHoc}");
  print("Số lượng học viên: ${android.soLuongHocVien}");
  print("List học viên: ${android.listTenHocVien}");
  print("Tính năng android: ${android.buildAndroid()}.");
  print("Số học viên android còn thiếu là: ${remainMember(android.soLuongHocVien, android.listTenHocVien)}");
  addMember(android.soLuongHocVien, android.listTenHocVien);
  print("List học viên sau khi thêm đủ học viên: ${android.listTenHocVien}");

  IOS ios = IOS(13, ["D", "E"]);
  print("\nTên lớp học: ${ios.tenLopHoc}");
  print("Số lượng học viên: ${ios.soLuongHocVien}");
  print("List học viên: ${ios.listTenHocVien}");
  print("Tính năng iOS: ${ios.buildIOS()}.");
  print("Số học viên iOS còn thiếu là: ${remainMember(ios.soLuongHocVien, ios.listTenHocVien)}");
  addMember(ios.soLuongHocVien, ios.listTenHocVien);
  print("List học viên sau khi thêm đủ học viên: ${ios.listTenHocVien}");

  Web web = Web(14, ["F"]);
  print("\nTên lớp học: ${web.tenLopHoc}");
  print("Số lượng học viên: ${web.soLuongHocVien}");
  print("List học viên: ${web.listTenHocVien}");
  print("Tính năng web: ${web.buildWeb()}.");
  print("Số học viên web còn thiếu là: ${remainMember(web.soLuongHocVien, web.listTenHocVien)}");
  addMember(web.soLuongHocVien, web.listTenHocVien);
  print("List học viên sau khi thêm đủ học viên: ${web.listTenHocVien}");
}

int remainMember(int soLuongHocVien, List<String> listTenHocVien) {
  int thanhVienConThieu = soLuongHocVien - listTenHocVien.length;
  
  return thanhVienConThieu;
}

void addMember(int soLuongHocVien, List<String> listTenHocVien) {
  List<String> listMemberThieu = ["X", "Y", "X", "W", "V", "U", "T", "S", "R", "Q", "P", "O", "N"];

  int soLuongMemberThieu = remainMember(soLuongHocVien, listTenHocVien);

  for (int i = 0; i < soLuongMemberThieu; i++) {
    listTenHocVien.add(listMemberThieu[i]);
  }
}

class Flutter with BuildAndroid, BuildiOS, BuildWeb, BuildDesktopApp {
  final String _tenLopHoc = "Flutter";
  int soLuongHocVien;
  List<String> listTenHocVien;

  Flutter(this.soLuongHocVien, this.listTenHocVien);

  String get tenLopHoc => _tenLopHoc;
}

class Android with BuildAndroid {
  final String _tenLopHoc = "Android";
  int soLuongHocVien;
  List<String> listTenHocVien;

  Android(this.soLuongHocVien, this.listTenHocVien);

  String get tenLopHoc => _tenLopHoc;
}

class IOS with BuildiOS {
  final String _tenLopHoc = "iOS";
  int soLuongHocVien;
  List<String> listTenHocVien;

  IOS(this.soLuongHocVien, this.listTenHocVien);

  String get tenLopHoc => _tenLopHoc;
}

class Web with BuildWeb {
  final String _tenLopHoc = "Web";
  int soLuongHocVien;
  List<String> listTenHocVien;

  Web(this.soLuongHocVien, this.listTenHocVien);

  String get tenLopHoc => _tenLopHoc;
}

mixin BuildAndroid {
  String buildAndroid() => "Build Android";
}

mixin BuildiOS {
  String buildIOS() => "Build IOS";
}

mixin BuildWeb {
  String buildWeb() => "Build Web";
}

mixin BuildDesktopApp {
  String buildDesktopApp() => "Build Desktop App";
}