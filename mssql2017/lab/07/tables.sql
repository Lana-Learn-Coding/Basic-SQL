DROP TABLE IF EXISTS Nha_Tren_Pho;
DROP TABLE IF EXISTS DuongPho;
DROP TABLE IF EXISTS QuanHuyen;


CREATE TABLE QuanHuyen
(
    MAQH  INT IDENTITY NOT NULL,
    TenQH NVARCHAR(MAX) NOT NULL
)

CREATE TABLE DuongPho
(
    DuongID      INT           NOT NULL,
    MAQH         INT           NOT NULL,
    TENDUONG     NVARCHAR(MAX) NOT NULL,
    NgayDuyetTen DATETIME      NULL
)

CREATE TABLE Nha_Tren_Pho
(
    NhaID    INT          NOT NULL,
    DuongID  INT          NOT NULL,
    ChuHo    NVARCHAR(50) NULL,
    Dientich MONEY        NULL
)

ALTER TABLE QuanHuyen
    ADD PRIMARY KEY (MAQH)


ALTER TABLE DuongPho
    ADD PRIMARY KEY (DuongID),
        FOREIGN KEY (MAQH) REFERENCES QuanHuyen (MAQH)

ALTER TABLE Nha_Tren_Pho
    ADD PRIMARY KEY (NhaID),
        FOREIGN KEY (DuongID) REFERENCES DuongPho (DuongID),
        SoNhanKhau INT
