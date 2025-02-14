create database test
go

USE test
GO
--1.
CREATE TABLE NhanVien 
(
	MaNV INT PRIMARY KEY,
	HoTen varchar(50),   
	Tuoi INT,
	PhongBan VARCHAR(50)

)
--2.
INSERT dbo.NhanVien
(
    MaNV,
    HoTen,
    Tuoi,
    PhongBan
)
VALUES
(   1 ,   
    ' nguyen van A',
    30 , 
    'ke toan'
    ) 

INSERT NhanVien (MaNV,HoTen,Tuoi,PhongBan)
VALUES 
(2, 'tran thi B',25  ,' nhan su'),
(3, 'le van C',28 ,' IT'),
(4 , 'pham thi D',32  ,'ke toan'),
(5, 'vu van E',26,'IT'),
(6, 'nguyen thi F',29,' marketing'),
(7 , 'le thi G',27  ,' nhan su'),
(8 , 'hoang van H',35  ,'ke toan'),
(9, 'pham van L',33  ,'marketing'),
(12, 'tran van J',24   ,'IT'),
(11, ' hoang sy  viet ',90, 'phu ho'),
(13, 'abc...',23, 'ke toan')


-- 3.
SELECT * FROM dbo.NhanVien
--4. 
SELECT HoTen, Tuoi FROM  dbo.NhanVien
--5.
SELECT * FROM dbo.NhanVien
WHERE  Tuoi > 25

SELECT * FROM dbo.NhanVien
WHERE HoTen  LIKE '%nguyen%'
-- 6.
SELECT PhongBan, MAX(Tuoi) AS N'do tuoi lon nhat phong ban' FROM NhanVien 
GROUP BY PhongBan

-- 7.
UPDATE NhanVien 
SET PhongBan = 'marketing' 
WHERE HoTen = 'le van C'

--8. 
DELETE FROM NhanVien 
WHERE MaNV = 2 

SELECT PhongBan, COUNT(*) as 'so luong nhan vien ' 
FROM NhanVien 
GROUP BY PhongBan
