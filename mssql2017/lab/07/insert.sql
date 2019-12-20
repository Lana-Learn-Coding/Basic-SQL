INSERT INTO QuanHuyen(TenQH)
VALUES ('Pho Cau Giay'),
       ('Hoang Mai')

INSERT INTO DuongPho(DuongID, MAQH, TENDUONG, NgayDuyetTen)
VALUES (1, 1, 'Hoang Quoc Viet', '1998-02-28'),
       (2, 1, 'Pham Van Dong', '1998-02-28'),
       (3, 2, 'Tran Cung', ' 1998-02-28')

INSERT INTO Nha_Tren_Pho(NhaID, DuongID, ChuHo, Dientich, SoNhanKhau)
VALUES (1, 1, 'DienNQ', 250, 2),
       (2, 1, 'HienNV', 69, 4),
       (3, 2, 'HoangVH', 99, 6)

UPDATE QuanHuyen
SET TenQH.WRITE('Duong Cau Giay', 0, NULL)
WHERE MAQH = 1