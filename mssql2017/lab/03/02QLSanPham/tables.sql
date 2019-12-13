DROP TABLE IF EXISTS CustomerItems
DROP TABLE IF EXISTS Customers
DROP TABLE IF EXISTS Items

CREATE TABLE Customers
(
    MaKhach   CHAR(5) PRIMARY KEY,
    TenKhach  NVARCHAR(256) NOT NULL,
    DienThoai VARCHAR(128)  NOT NULL
)

CREATE TABLE Items
(
    MaHang  CHAR(5) PRIMARY KEY,
    TenHang NVARCHAR(256) NOT NULL,
    DonGia  BIGINT
)

CREATE TABLE CustomerItems
(
    MaKhach CHAR(5),
    MaHang  CHAR(5),
    SoLuong INT,
    PRIMARY KEY (MaKhach, MaHang),
    FOREIGN KEY (MaHang) REFERENCES Items (MaHang),
    FOREIGN KEY (MaKhach) REFERENCES Customers (MaKhach)
)