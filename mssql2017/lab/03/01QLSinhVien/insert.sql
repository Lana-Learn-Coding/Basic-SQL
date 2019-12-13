INSERT INTO DMKHOA(MaKH, TenKH)
VALUES ('AV', 'Anh Van'),
       ('TH', 'Tin Hoc'),
       ('TR', 'Triet Hoc')

INSERT INTO DMMH(MaMH, TenMH, HeSo)
VALUES ('01', 'BDWS', 4),
       ('02', 'BW8', 2),
       ('03', 'DDSQL', 6)

INSERT INTO DMSV(MaSV, TenSV, GioiTinh, MaKH, SoMonDK, DiemTB)
VALUES ('C01', 'Pham Tuan Anh', 1, 'TH', 2, 8),
       ('C02', 'Pham Van Thanh', 1, 'TH', 2, 8),
       ('C03', 'Trinh Thi Hien', 0, 'TH', 3, 8),
       ('C04', 'Tran Duc Cuong', 1, 'AV', 2, 8),
       ('C05', 'Nguyen Bich Ngoc', 0, 'TR', 3, 8)

INSERT INTO KETQUA(MaSV, MaMH, Diem)
VALUES ('C01', '01', 6),
       ('C01', '02', 8),
       ('C02', '03', 8),
       ('C02', '02', 6),
       ('C03', '02', 5)

