UPDATE QuanHuyen
SET TenQH.WRITE('Duong Cau Giay', 0, NULL)
WHERE MAQH = 1
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
