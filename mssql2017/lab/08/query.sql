SELECT N.MaNVL, TenNVL, DvTinh, DonGia, SlDinhMuc
FROM NVL N
         LEFT JOIN Dinh_Muc DM ON N.MaNVL = DM.MaNVL
WHERE MaHH = 'G001'

SELECT N.MaNVL, TenNVL, COUNT(DM.MaHH) AS TongSoHangHoa
FROM NVL N
         LEFT JOIN Dinh_Muc DM ON N.MaNVL = DM.MaNVL
GROUP BY N.MaNVL, TenNVL

SELECT N.MaNVL,
       TenNVL,
       SUM(SlDinhMuc * SlSanXuat) AS SoLuongDuDoan
FROM NVL N
         LEFT JOIN Dinh_Muc DM ON N.MaNVL = DM.MaNVL
         LEFT JOIN KHSX K ON DM.MaHH = K.MaHH
GROUP BY N.MaNVL, TenNVL

SELECT N.MaNVL,
       TenNVL,
       SUM(SlDinhMuc * SlSanXuat)          AS SoLuongDuDoan,
       SUM(SlDinhMuc * SlSanXuat) * DonGia AS ThanhTienDuDoan
FROM NVL N
         LEFT JOIN Dinh_Muc DM ON N.MaNVL = DM.MaNVL
         LEFT JOIN KHSX K ON DM.MaHH = K.MaHH
GROUP BY N.MaNVL, TenNVL, DonGia
