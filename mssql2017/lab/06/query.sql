UPDATE Travels
SET price = price / 100 * 110
WHERE days > 5
  AND catId = 300

SELECT Categories.catId, catName, COUNT(Travels.trId) AS Quanlity
FROM Travels
         LEFT JOIN Categories ON Travels.catId = Categories.catId
GROUP BY Categories.catId, catName

UPDATE Categories
SET counts = (
    SELECT COUNT(trId)
    FROM Travels
    WHERE Travels.catId = Categories.catId
)