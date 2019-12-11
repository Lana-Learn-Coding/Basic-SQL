DROP TABLE IF EXISTS Bill
DROP TABLE IF EXISTS Product
DROP TABLE IF EXISTS Catelog
DROP TABLE IF EXISTS Customer

CREATE TABLE Catelog
(
    id          INT PRIMARY KEY IDENTITY (1, 1),
    name        NVARCHAR(128) NOT NULL,
    description NVARCHAR(256),
)

CREATE TABLE Customer
(
    id     INT PRIMARY KEY IDENTITY (1, 1),
    name   NVARCHAR(128) NOT NULL,
    age    INT           NOT NULL,
    email  VARCHAR(128)  NOT NULL UNIQUE,
    gender CHAR,
    -- link to the img
    image  NVARCHAR(128)
)

CREATE TABLE Product
(
    id        INT PRIMARY KEY IDENTITY (1, 1),
    name      NVARCHAR(128) NOT NULL UNIQUE,
    catelogId INT,
    FOREIGN KEY (catelogId) REFERENCES Catelog (id) ON UPDATE CASCADE ON DELETE SET NULL
)

CREATE TABLE Bill
(
    customerId  INT NOT NULL,
    productId   INT NOT NULL,
    quantity    INT NOT NULL,
    description NVARCHAR(256),
    PRIMARY KEY (customerId, productId),
    FOREIGN KEY (customerId) REFERENCES Customer (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (productId) REFERENCES Product (id) ON UPDATE CASCADE ON DELETE CASCADE
)