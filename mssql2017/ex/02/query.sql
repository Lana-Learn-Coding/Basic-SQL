UPDATE Travels
SET price = price / 100 * 110
WHERE days > 5
  AND catId = 300

SELECT Categories.catId, catName, COUNT(Travels.trId) AS Quanlity
FROM Travels
         LEFT JOIN Categories ON Travels.catId = Categories.catId
GROUP BY Categories.catId, catName

UPDATE Categories
SET counts = (SELECT COUNT(trId)
              FROM Travels
              WHERE Travels.catId = Categories.catId)
GO

DROP TRIGGER IF EXISTS TRG_Price_Travels
GO
CREATE TRIGGER TRG_Price_Travels
    ON Travels
    FOR UPDATE, INSERT
    AS
    IF EXISTS(SELECT *
              FROM inserted
              WHERE price < 0)
        BEGIN
            THROW 51000, 'Travel price must > 0',1
        END
GO

DROP TRIGGER IF EXISTS TRG_CntUpd_Categories
GO
CREATE TRIGGER TRG_CntUpd_Categories
    ON Travels
    FOR DELETE
    AS
    UPDATE Categories
    SET counts = (SELECT COUNT(trId)
                  FROM Travels
                  WHERE Travels.catId = Categories.catId)
    FROM Categories
             RIGHT JOIN deleted ON deleted.catId = Categories.catId
GO

DROP TRIGGER IF EXISTS TRG_Date_Travels
GO
CREATE TRIGGER TRG_Date_Travels
    ON Travels
    FOR INSERT
    AS
    IF EXISTS(SELECT *
              FROM inserted
              WHERE startDate < GETDATE())
        THROW 52000, 'You aint no time traveler',1
