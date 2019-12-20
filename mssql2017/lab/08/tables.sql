DROP TABLE IF EXISTS Dinh_Muc
DROP TABLE IF EXISTS KHSX
DROP TABLE IF EXISTS Hang_Hoa
DROP TABLE IF EXISTS NVL


CREATE TABLE Hang_Hoa
(
    MaHH  CHAR(4) PRIMARY KEY,
    TenHH NVARCHAR(50) NOT NULL,
)

CREATE TABLE NVL
(
    MaNVL  CHAR(4) PRIMARY KEY,
    TenNVL NVARCHAR(50) NOT NULL,
    DvTinh CHAR(10),
    DonGia FLOAT CHECK (DonGia >= 0),
)

CREATE TABLE Dinh_Muc
(
    MaHH      CHAR(4),
    MaNVL     CHAR(4),
    SlDinhMuc REAL CHECK (SlDinhMuc >= 0),
    PRIMARY KEY (MaHH, MaNVL),
    FOREIGN KEY (MaHH) REFERENCES Hang_Hoa (MaHH),
    FOREIGN KEY (MaNVL) REFERENCES NVL (MaNVL)
)

CREATE TABLE KHSX
(
    NamThang  CHAR(6),
    MaHH      CHAR(4),
    SlSanXuat INT CHECK (SlSanXuat > 0),
    PRIMARY KEY (MaHH, NamThang),
    FOREIGN KEY (MaHH) REFERENCES Hang_Hoa (MaHH)
)

--Insert data
INSERT INTO Hang_Hoa(MaHH, TenHH)
VALUES ('G001', N'Giày thể thao'),
       ('G002', N'Giầy thời trang'),
       ('G003', N'Giày trẻ em')

INSERT INTO NVL(MaNVL, TenNVL, DvTinh, DonGia)
VALUES ('D001', 'Da', N'Tấm', 100000),
       ('D002', N'Giả da', N'Mét', 70000),
       ('D003', N'Nhựa', 'Kg', 120000),
       ('D004', 'Keo', 'Kg', 80000),
       ('D005', N'Chỉ', N'Mét', 30000)

INSERT INTO Dinh_Muc(mahh, manvl, sldinhmuc)
VALUES ('G001', 'D001', 0.3),
       ('G001', 'D002', 0.2),
       ('G001', 'D003', 0.3),
       ('G002', 'D001', 0.2),
       ('G002', 'D002', 0.1),
       ('G002', 'D003', 0.2),
       ('G003', 'D002', 0.1),
       ('G003', 'D003', 0.1),
       ('G003', 'D004', 0.3),
       ('G003', 'D005', 0.3)

INSERT INTO KHSX(NamThang, MaHH, SlSanXuat)
VALUES (200504, 'G001', 8000),
       (200504, 'G002', 7500),
       (200504, 'G003', 7000),
       (200505, 'G001', 7500),
       (200505, 'G002', 8000)