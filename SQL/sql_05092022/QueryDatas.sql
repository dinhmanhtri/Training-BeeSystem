USE [SchoolManagement];
GO

-- 2.a
SELECT TBLGiangVien.MaGV, TBLGiangVien.HoTen, TBLKhoa.TenKhoa
FROM TBLGiangVien
INNER JOIN TBLKhoa
ON TBLGiangVien.MaKhoa = TBLKhoa.MaKhoa;

-- 2.b
SELECT TBLGiangVien.MaGV, TBLGiangVien.HoTen, TBLKhoa.TenKhoa
FROM TBLGiangVien
INNER JOIN TBLKhoa
ON TBLGiangVien.MaKhoa = TBLKhoa.MaKhoa
WHERE TBLKhoa.TenKhoa = 'DIA LY' OR TBLKhoa.TenKhoa = 'QLTN';

-- 2.c
SELECT COUNT(*)
AS SoSinhVien
FROM TBLSinhVien
INNER JOIN TBLKhoa
ON TBLSinhVien.MaKhoa = TBLKhoa.MaKhoa
WHERE TBLKhoa.TenKhoa = 'CONG NGHE SINH HOC';

-- 2.d
SELECT TBLSinhVien.MaSV, TBLSinhVien.HoTen, year(getdate())-year(TBLSinhVien.NamSinh) AS 'Tuoi'
FROM TBLSinhVien
INNER JOIN TBLKhoa
ON TBLSinhVien.MaKhoa = TBLKhoa.MaKhoa
WHERE TBLKhoa.TenKhoa = 'TOAN'

-- 2.e
SELECT COUNT(*)
AS SoSinhVien
FROM TBLGiangVien
INNER JOIN TBLKhoa
ON TBLGiangVien.MaKhoa = TBLKhoa.MaKhoa
WHERE TBLKhoa.TenKhoa = 'CONG NGHE SINH HOC';

-- 3.g
SELECT TBLGiangVien.MaKhoa, TBLKhoa.TenKhoa, COUNT(TBLGiangVien.MaGV) AS 'SoGiangVien'
FROM TBLGiangVien, TBLKhoa 
WHERE TBLGiangVien.MaKhoa = TBLKhoa.MaKhoa
GROUP BY TBLGiangVien.MaKhoa, TBLKhoa.TenKhoa;

-- 3.i
SELECT TBLKhoa.TenKhoa, COUNT(TBLSinhVien.MaSV) AS 'SoSinhVien'
FROM TBLSinhVien, TBLKhoa 
WHERE TBLSinhVien.MaKhoa = TBLKhoa.MaKhoa
GROUP BY TBLSinhVien.MaKhoa, TBLKhoa.TenKhoa;

-- 3.k
SELECT TBLKhoa.TenKhoa
FROM (TBLSinhVien INNER JOIN TBLKhoa ON TBLSinhVien.MaKhoa = TBLKhoa.MaKhoa)
GROUP BY TBLKhoa.TenKhoa
HAVING COUNT(TBLSinhVien.MaSV) > 2;

--3.k - Create temporare table
CREATE TABLE ##TBLKhoaTemp (
    TenKhoa NVARCHAR(255) NOT NULL,
    SoSinhVien INT
);

INSERT INTO ##TBLKhoaTemp
SELECT TBLKhoa.TenKhoa, COUNT(TBLSinhVien.MaSV)
FROM (TBLSinhVien INNER JOIN TBLKhoa ON TBLSinhVien.MaKhoa = TBLKhoa.MaKhoa)
GROUP BY TBLKhoa.TenKhoa;

SELECT ##TBLKhoaTemp.TenKhoa
FROM ##TBLKhoaTemp
WHERE ##TBLKhoaTemp.SoSinhVien > 2;