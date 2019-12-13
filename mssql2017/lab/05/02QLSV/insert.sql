INSERT INTO DMKHOA(MaKH, TenKH)
VALUES ('AV', 'Anh Van'),
       ('TH', 'Tin Hoc'),
       ('TR', 'Triet'),
       ('VL', 'Vat Ly')

INSERT INTO DMMH(MaMH, TenMH, HeSo)
VALUES ('01', 'Co So Du Lieu', 2),
       ('02', 'Tri Tue Nhan Tao', 1),
       ('03', 'Truyen Tin', 1),
       ('04', 'Thiet Ke Web', 1),
       ('05', 'Mang May Tinh', 1)

INSERT INTO DMSV(MaSV, TenSV, MaKH, Nam)
VALUES ('A01', N'Nguyễn Thanh Hải', 'TH', 1),
       ('A02', N'Trần Văn Chính', 'TH', 1),
       ('A03', N'Lê Thị Bạch Yến', 'TH', 0),
       ('A04', N'Nguyễn Công Phượng', 'AV', 1),
       ('B01', N'Phạm Văn Mách', 'TR', 1),
       ('B02', N'Bùi Văn Quyến', 'AV', 0)

INSERT INTO KETQUA(MaSV, MaMH, Diem)
VALUES ('A01', '01', 6.00),
       ('A01', '02', 6.00),
       ('A01', '03', 5.00),
       ('A02', '01', 7.50),
       ('A02', '03', 10.00),
       ('A02', '05', 9.00),
       ('A03', '01', 5.00),
       ('A03', '03', 2.50),
       ('A04', '05', 10.00),
       ('B01', '01', 7.00),
       ('B01', '03', 2.50),
       ('B02', '02', 6.00),
       ('B02', '04', 10.00)