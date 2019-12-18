DROP TABLE IF EXISTS Travels
DROP TABLE IF EXISTS Categories

CREATE TABLE Categories
(
    catId   INT PRIMARY KEY,
    catName VARCHAR(100) NOT NULL,
    counts  INT          NULL,
)

CREATE TABLE Travels
(
    trId      INT PRIMARY KEY,
    name      VARCHAR(100) NOT NULL UNIQUE,
    price     FLOAT        NULL,
    days      INT          NOT NULL,
    catId     INT          NOT NULL,
    startDate DATETIME     NULL DEFAULT GETDATE(),
    FOREIGN KEY (catId) REFERENCES Categories (catId),
    CHECK (days >= 0 AND days <= 15)
)