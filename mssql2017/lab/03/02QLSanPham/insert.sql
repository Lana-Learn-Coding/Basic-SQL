INSERT INTO Customers(MaKhach, TenKhach, DienThoai)
VALUES ('KH001', 'Ding Truong Son', '0000000000'),
       ('KH002', 'Mai Thanh Ding', '0123456789'),
       ('KH003', 'Nguyen Hong Ha', '0122344567'),
       ('KH004', 'Hoang Trung Dung', '0122344568'),
       ('KH005', 'Bui Minh Ngoc', '0011223344'),
       ('KH006', 'Bui Minh Ngoc Ver 2', '0011223355')

INSERT INTO Items(MaHang, TenHang, DonGia)
VALUES ('H01', 'Tu Lanh', 3500000),
       ('H02', 'Ti Vi', 2500000),
       ('H03', 'Dieu Hoa', 5000000),
       ('H04', 'Quat Da', 500000),
       ('H05', 'May Giat', 4500000),
       ('H06', 'May Tinh', 5000000)

INSERT INTO CustomerItems(MaKhach, MaHang, SoLuong)
VALUES ('KH001', 'H01', 4),
       ('KH002', 'H01', 1),
       ('KH002', 'H02', 8),
       ('KH003', 'H03', 2),
       ('KH004', 'H01', 2),
       ('KH004', 'H03', 4),
       ('KH005', 'H04', 2),
       ('KH005', 'H05', 10),
       ('KH006', 'H05', 1),
       ('KH006', 'H02', 1)