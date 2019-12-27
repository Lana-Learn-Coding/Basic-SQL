DROP TABLE IF EXISTS Travels
DROP TABLE IF EXISTS Categories

CREATE TABLE Categories
(

    id     INT NOT NULL,
    name   NVARCHAR(50) UNIQUE,
    counts SMALLINT DEFAULT 0
)

CREATE TABLE Travels
(
    id         INT      NOT NULL,
    name       NVARCHAR(50),
    price      FLOAT    NOT NULL DEFAULT 0 CHECK (price <= 99000),
    days       TINYINT  NOT NULL DEFAULT 1,
    cat_id     INT,
    start_date DATETIME NOT NULL DEFAULT GETDATE()
)

ALTER TABLE Categories
    ADD PRIMARY KEY (id)


ALTER TABLE Travels
    ADD PRIMARY KEY (id),
        FOREIGN KEY (cat_id) REFERENCES Categories (id),
        CHECK (days >= 0 AND days <= 15),
        UNIQUE (name)

INSERT INTO Categories(id, name, counts)
VALUES (1, N'Du lịch trong nước', 2),
       (2, N'Khám phá', 5),
       (3, N'Du lịch tâm linh', 1),
       (4, N'Nghỉ dưỡng', 4)

INSERT INTO Travels(id, name, price, days, cat_id, start_date)
VALUES (1, N'Hà Nội TP vì hòa bình', 125, 1, 1, '2019-03-26 08:15:00'),
       (2, N'Đà Lạt - Nơi tình yêu bắt đầu', 350, 3, 1, '2019-04-30 20:00:00'),
       (3, N'Hà Giang - mùa hoa Tam Giác Mạch', 90, 2, 1, '2019-09-01 15:00:00'),
       (4, N'Phú Quốc – hòn đảo mộng mơ', 1120, 8, 4, '2019-05-18 06:00:00'),
       (5, N'Ninh Bình – Tìm về bản ngã', 589, 4, 3, '2019-03-26 08:15:00'),
       (6, N'Nha Trang – Thiên đường nghỉ dưỡng', 486, 6, 4, '2019-09-01 15:00:00')

UPDATE Travels
SET price = ROUND(price * 1.1, 2)
WHERE cat_id = 1
  AND days >= 2

SELECT Travels.id, Travels.name, price, days, Categories.name, start_date
FROM Travels
         JOIN Categories ON Categories.id = Travels.id
ORDER BY price