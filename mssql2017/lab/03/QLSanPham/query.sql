-- TODO: Do something with these sub-query

SELECT SUM(SoLuong * DonGia) AS TongSo,
       SUM(SoLuong)          AS TongSanPham
FROM CustomerItems
         INNER JOIN Items ON CustomerItems.MaHang = Items.MaHang

SELECT Items.MaHang,
       TenHang,
       DonGia,
       (SELECT SUM(SoLuong)
        FROM CustomerItems
        WHERE CustomerItems.MaHang = Items.MaHang
       ) AS DaBan
FROM Items
ORDER BY DaBan DESC

SELECT TOP 3 Items.MaHang,
             TenHang,
             DonGia
FROM Items
ORDER BY (SELECT SUM(SoLuong)
          FROM CustomerItems
          WHERE CustomerItems.MaHang = Items.MaHang
         ) DESC

SELECT *
FROM Items
WHERE (SELECT COUNT(*)
       FROM CustomerItems
       WHERE CustomerItems.MaHang = Items.MaHang
      ) = 0

SELECT *
FROM Customers
WHERE (SELECT COUNT(DISTINCT MaHang)
       FROM CustomerItems
       WHERE CustomerItems.MaKhach = Customers.MaKhach
      ) > 1

SELECT *
FROM Customers
WHERE (SELECT MAX(SoLuong)
       FROM CustomerItems
       WHERE CustomerItems.MaKhach = Customers.MaKhach
      ) > 1