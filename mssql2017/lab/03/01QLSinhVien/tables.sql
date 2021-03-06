DROP TABLE IF EXISTS KETQUA
DROP TABLE IF EXISTS DMSV
DROP TABLE IF EXISTS DMMH
DROP TABLE IF EXISTS DMKHOA

CREATE TABLE DMKHOA
(
    MaKH  CHAR(2) PRIMARY KEY,
    TenKH NVARCHAR(100) NOT NULL
)

CREATE TABLE DMMH
(
    MaMH  CHAR(2) PRIMARY KEY,
    TenMH NVARCHAR(100) NOT NULL,
    HeSo  INT           NOT NULL DEFAULT 1,
)

CREATE TABLE DMSV
(
    MaSV     CHAR(3) PRIMARY KEY,
    TenSV    NVARCHAR(100) NOT NULL,
    MaKH     CHAR(2),
    GioiTinh BIT           NOT NULL,
    SoMonDK  INT           NOT NULL,
    DiemTB   INT,
    FOREIGN KEY (MaKH) REFERENCES DMKHOA (MaKH) ON UPDATE CASCADE ON DELETE SET NULL
)

CREATE TABLE KETQUA
(
    MaSV CHAR(3),
    MaMH CHAR(2),
    Diem FLOAT NOT NULL,
    PRIMARY KEY (MaMH, MaSV),
    FOREIGN KEY (MaMH) REFERENCES DMMH (MaMH) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (MaSV) REFERENCES DMSV (MaSV) ON UPDATE CASCADE ON DELETE CASCADE,
)