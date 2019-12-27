DROP VIEW IF EXISTS vw_short_tour
DROP VIEW IF EXISTS vw_tour_dulich
DROP PROCEDURE IF EXISTS get_max_days_tours
DROP PROCEDURE IF EXISTS find_tour_by_name_or_catname
GO

CREATE VIEW vw_short_tour
AS
SELECT Travels.id, Travels.name, price, days, Categories.name AS cat_name, start_date
FROM Travels
         JOIN Categories ON Categories.id = Travels.id
WHERE days <= 2
GO

CREATE VIEW vw_tour_dulich
AS
SELECT Travels.id, Travels.name, price, days, Categories.name AS cat_name, start_date
FROM Travels
         JOIN Categories ON Categories.id = Travels.id
WHERE Categories.name LIKE N'%du lịch%'
GO

CREATE PROCEDURE get_max_days_tours
AS
SELECT *
FROM Travels
WHERE days = (SELECT max(days) FROM Travels)
GO

CREATE PROCEDURE find_tour_by_name_or_catname @name NVARCHAR(50)
AS
SELECT Travels.id, Travels.name, Categories.name AS cat_name, price, days, start_date
FROM Travels
         JOIN Categories ON Categories.id = Travels.id
     -- replace LIKE with = for extract search
WHERE Categories.name LIKE CONCAT('%', @name, '%')
   OR Travels.name LIKE CONCAT('%', @name, '%')
