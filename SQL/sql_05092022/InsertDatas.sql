USE [SchoolManagement];
GO

-- Insert to TBLKhoa
INSERT INTO TBLKhoa(MaKhoa, TenKhoa) VALUES(1, 'CONG NGHE SINH HOC');
INSERT INTO TBLKhoa(MaKhoa, TenKhoa) VALUES(2, 'DIA LY');
INSERT INTO TBLKhoa(MaKhoa, TenKhoa) VALUES(3, 'QLTN');
INSERT INTO TBLKhoa(MaKhoa, TenKhoa) VALUES(4, 'TOAN');
INSERT INTO TBLKhoa(MaKhoa, TenKhoa) VALUES(5, 'KIEM TOAN');

-- Insert to TBLSinhVien
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(1, 'Dinh Manh Tri', 1, '2002', 'Ha Noi');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(2, 'Dinh Manh Chien', 1, '2002', 'Ha Nam');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(3, 'Do Duy Hung', 1, '2003', 'Thai Binh');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(4, 'Le Van Son', 2, '2002', 'Hai Phong');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(5, 'Tran Van Thang', 1, '2002', 'Thai Binh');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(6, 'Pham Thao Van', 4, '2001', 'Nam Dinh');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(7, 'Nguyen Tuan Anh', 5, '2002', 'Hoa Binh');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(8, 'Duong Dinh Nghe', 3, '2000', 'Ninh Binh');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(9, 'Le Quy Don', 5, '2002', 'Thai Binh');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(10, 'Tran Quoc Tuan', 3, '2001', 'Hai Duong');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(11, 'Tran Thu Trang', 2, '2001', 'Phu Tho');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(12, 'Nguyen Thu Hang', 1, '2002', 'Son La');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(13, 'Pham Hong Ha', 1, '2003', 'Hai Phong');
INSERT INTO TBLSinhVien(MaSV, HoTen, MaKhoa, NamSinh, QueQuan) VALUES(14, 'Pham Van Chien', 4, '2004', 'Ha Noi');

-- Insert to TBLSinhVien
INSERT INTO TBLGiangVien(MaGV, HoTen, MaKhoa) VALUES(1, 'Dao Hong Luyen', 5);
INSERT INTO TBLGiangVien(MaGV, HoTen, MaKhoa) VALUES(2, 'Trinh Minh Thao', 2);
INSERT INTO TBLGiangVien(MaGV, HoTen, MaKhoa) VALUES(3, 'Nguyen Hong Quan', 2);
INSERT INTO TBLGiangVien(MaGV, HoTen, MaKhoa) VALUES(4, 'Ha Thi Trang', 1);
INSERT INTO TBLGiangVien(MaGV, HoTen, MaKhoa) VALUES(5, 'Pham Thi Tam', 4);
INSERT INTO TBLGiangVien(MaGV, HoTen, MaKhoa) VALUES(6, 'Nguyen Thi Ha', 3);
INSERT INTO TBLGiangVien(MaGV, HoTen, MaKhoa) VALUES(7, 'Nguyen Minh Phong', 5);
INSERT INTO TBLGiangVien(MaGV, HoTen, MaKhoa) VALUES(8, 'Dang Hoang Giang', 3);
INSERT INTO TBLGiangVien(MaGV, HoTen, MaKhoa) VALUES(9, 'Ha Van Chien', 2);