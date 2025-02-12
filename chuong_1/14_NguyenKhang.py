import sqlite3

conn = sqlite3.connect('nhan_su.db')
cursor = conn.cursor()

# Bai 1 Tạo bảng dữ liệu 
def create_table():
    conn = sqlite3.connect('nhan_su.db')
    cursor = conn.cursor()
    cursor.execute('''CREATE TABLE NhanVien(
                MANV INT PRIMARY KEY,
                HoTen Varchar(50),
                Tuoi INT,
                PhongBan Varchar(50))''')
    print('Đã tạo bảng NhanVien')
create_table()
# Bai 2 
cursor.execute('''INSERT INTO NhanVien VALUES
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
                (15, 'Hoang Thi O', 27, 'IT')''')

# Bai 3 
cursor.execute('''Select * from NhanVien''')
print('--- Danh sách nhân viên ---')
for row in cursor.fetchall():
    print(row)
# Bai 4
cursor.execute('''select HoTen,Tuoi
                 from NhanVien''')
print('--- Họ tên và tuổi nhân viên ---')
for row in cursor.fetchall():
    print(row)
# Bai 5 
cursor.execute('''select * from NhanVien 
                  where  Tuoi > 25''')
print('Các  nhân viên có tuổi  > 25')
for row in cursor.fetchall():
    print(row)

# Bai 6 
cursor.execute('''select HoTen,max(Tuoi)
                  from NhanVien
                 Group by PhongBan''')
print("--- Các nhân viên có độ tuổi lớn nhất trong các phòng ban ---")
for row in cursor.fetchall():
    print(row)
# Bai 7
cursor.execute('''UPDATE NhanVien SET PhongBan = 'Marketing'
                  where HoTen = 'Le Van C'
                  ''')
print('-- Bảng sau khi sửa --')
cursor.execute('select * from NhanVien')
for row in cursor.fetchall():
    print(row)

# Bai 8
cursor.execute('''delete from NhanVien 
               where MaNV = 2 ''')
print('-- Bảng sau khi sửa --')
cursor.execute('select * from NhanVien')
for row in cursor.fetchall():
    print(row)

conn.commit()
conn.close()