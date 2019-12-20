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
