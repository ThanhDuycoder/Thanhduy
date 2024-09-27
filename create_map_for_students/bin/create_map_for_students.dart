void main() {
  var hocSinhVaDiemso = {};
  //Add 5 học sinh vào map
  hocSinhVaDiemso['Nguyen Duy'] = '10';
  hocSinhVaDiemso['Vũ Duy'] = '9';
  hocSinhVaDiemso['Thành Duy'] = '6.2';
  hocSinhVaDiemso['Hoàng Duy'] = '7.3';
  hocSinhVaDiemso['Ngọc Duy'] = '8.1';
//Viết một hàm để thêm điểm số cho một học sinh mới
  void addHS(String hocSinh, double diem) {
    hocSinhVaDiemso[hocSinh] = diem;
    print('Đã cập nhật học sinh $hocSinh với điểm số $diem vào danh sách');
  }

  //Viết một hàm để cập nhật điểm số của một học sinh đã tồn tại
  void updateDiem(String hocSinh, double newDiem) {
    if (hocSinhVaDiemso.containsKey(hocSinh)) {
      hocSinhVaDiemso[hocSinh] = newDiem;
      print('Đã cập nhật điểm của học sinh $hocSinh là $newDiem');
    } else {
      print('Không tìm thấy học sinh');
    }
  }

  //Viết một hàm để xóa một học sinh khỏi Map.
  void removeHS(String hocSinh) {
    if (hocSinhVaDiemso.remove(hocSinh) != null) {
      print('đã xóa học sinh$hocSinh');
    } else {
      print('Không tìm thấy học sinh');
    }
  }

//In ra danh sách tất cả các học sinh và điểm số của họ
  void danhsachHS() {
    print('Danh sách học sinh và điểm số');
    hocSinhVaDiemso.forEach((hocSinh, diem) {
      print('$hocSinh : $diem');
    });
  }

//Viết một hàm để tìm và in ra điểm số của một học sinh cụ thể.
  void timHS(String hocSinh) {
    if (hocSinhVaDiemso.containsKey(hocSinh)) {
      print('Học sinh $hocSinh có điểm số là ${hocSinhVaDiemso[hocSinh]} điểm');
    } else {
      print('Không tìm thấy học sinh!!!');
    }
  }

  danhsachHS();
  addHS('Nguyễn Thành Duy', 5);
  updateDiem('Nguyễn Thành Duy', 10);
  removeHS('Nguyễn Thành Duy');
  print('Danh sách sau khi chỉnh sửa');
  danhsachHS();
  timHS('Nguyen Duy');
}
