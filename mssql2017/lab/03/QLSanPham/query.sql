SELECT SUM(SoLuong * DonGia) AS TongSo,
       SUM(SoLuong)          AS TongSanPham
FROM CustomerItems
         LEFT JOIN Items ON CustomerItems.MaHang = Items.MaHang


SELECT Items.MaHang, TenHang, DonGia, ISNULL(SUM(SoLuong), 0) AS DaBan
FROM Items
         LEFT JOIN CustomerItems ON CustomerItems.MaHang = Items.MaHang
GROUP BY Items.MaHang, TenHang, DonGia
ORDER BY DaBan DESC


SELECT TOP 3 Items.mahang, tenhang, dongia
FROM Items
         LEFT JOIN CustomerItems ON Items.MaHang = CustomerItems.MaHang
GROUP BY Items.mahang, tenhang, dongia
ORDER BY SUM(SoLuong) DESC


SELECT Items.mahang, tenhang, dongia, ISNULL(CustomerItems.SoLuong, 0) AS SoLuong
FROM Items
         LEFT JOIN CustomerItems ON Items.MaHang = CustomerItems.MaHang
WHERE CustomerItems.SoLuong IS NULL


SELECT Customers.MaKhach, TenKhach, DienThoai, COUNT(DISTINCT MaHang) AS SoLoaiDaMua
FROM Customers
         LEFT JOIN CustomerItems ON Customers.MaKhach = CustomerItems.MaKhach
GROUP BY Customers.MaKhach, TenKhach, DienThoai
HAVING COUNT(DISTINCT MaHang) > 1


SELECT Customers.MaKhach, TenKhach, DienThoai, MAX(SoLuong) AS SoLuongMua
FROM Customers
         LEFT JOIN CustomerItems ON Customers.MaKhach = CustomerItems.MaKhach
GROUP BY Customers.MaKhach, TenKhach, DienThoai
HAVING MAX(SoLuong) > 1
