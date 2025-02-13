--cau1
CREATE TABLE NhanVien (
    MaNV INT PRIMARY KEY,
    HoTen VARCHAR(50),
    Tuoi INT,
    PhongBan VARCHAR(50)
);
--cau2
INSERT INTO NhanVien (MaNV, HoTen, Tuoi, PhongBan) VALUES
(1, 'Nguyen Van A', 30, 'Ke Toan'),
(2, 'Tran Thi B', 25, 'Nhan Su'),
(3, 'Le Van C', 28, 'IT'),
(4, 'Pham Thi D', 32, 'Ke Toan'),
(5, 'Vu Van E', 26, 'IT'),
(6, 'Nguyen Thi F', 29, 'Marketing'),
(7, 'Le Thi G', 27, 'Nhan Su'),
(8, 'Hoang Van H', 35, 'Ke Toan'),
(9, 'Pham Van I', 33, 'Marketing'),
(10, 'Tran Van J', 24, 'IT'),
(11, 'Dang Thi K', 31, 'Nhan Su'),
(12, 'Nguyen Van L', 28, 'Ke Toan'),
(13, 'Tran Thi M', 26, 'Marketing'),
(14, 'Pham Van N', 30, 'Nhan Su'),
(15, 'Hoang Thi O', 27, 'IT');
--cau3
select * from NhanVien
--cau4
SELECT HoTen, Tuoi FROM NhanVien WHERE PhongBan = 'IT';
--cau5
SELECT * FROM NhanVien WHERE Tuoi > 25;
--cau6
SELECT PhongBan, HoTen, Tuoi 
FROM NhanVien 
WHERE (PhongBan, Tuoi) IN (
    SELECT PhongBan, MAX(Tuoi) FROM NhanVien GROUP BY PhongBan
);
--cau7
UPDATE NhanVien 
SET PhongBan = 'Marketing' 
WHERE HoTen = 'Le Van C';
--cau8
DELETE FROM NhanVien WHERE MaNV = 2;
SELECT PhongBan, COUNT(*) AS SoNhanVien 
FROM NhanVien 
GROUP BY PhongBan;

