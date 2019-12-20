DROP VIEW IF EXISTS vw_all_Nha_Tren_Pho
GO
CREATE VIEW vw_all_Nha_Tren_Pho AS
SELECT Q.TenQH,
       DP.TENDUONG,
       DP.NgayDuyetTen,
       NTP.ChuHo,
       NTP.Dientich,
       NTP.SoNhanKhau
FROM QuanHuyen Q
         JOIN DuongPho DP ON Q.MAQH = DP.MAQH
         JOIN Nha_Tren_Pho NTP ON DP.DuongID = NTP.DuongID
GO

DROP VIEW IF EXISTS vw_AVG_Nha_Tren_Pho
GO
CREATE VIEW vw_AVG_Nha_Tren_Pho AS
SELECT TENDUONG,
       AVG(Dientich)   AS AVG_DienTich,
       AVG(SoNhanKhau) AS AVG_NhanKhau
FROM Nha_Tren_Pho
         JOIN DuongPho ON Nha_Tren_Pho.DuongID = DuongPho.DuongID
GROUP BY (TENDUONG)
GO

DROP PROCEDURE IF EXISTS sp_NgayQuyetTen_DuongPho
GO
CREATE PROCEDURE sp_NgayQuyetTen_DuongPho(
    @NgayDuyet DATETIME
) AS
SELECT NgayDuyetTen,
       TENDUONG,
       TenQH
FROM DuongPho
         LEFT JOIN QuanHuyen ON DuongPho.MAQH = QuanHuyen.MAQH
WHERE NgayDuyetTen = CONVERT(DATETIME, @NgayDuyet);
GO
EXEC sp_NgayQuyetTen_DuongPho @NgayDuyet = '1998/02/28'
