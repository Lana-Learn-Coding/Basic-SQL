DROP TABLE IF EXISTS Book
DROP TABLE IF EXISTS CallCard
DROP TABLE IF EXISTS Catelog
DROP TABLE IF EXISTS Author
DROP TABLE IF EXISTS Student

CREATE TABLE Catelog
(
    id          INT PRIMARY KEY IDENTITY (1, 1),
    name        NVARCHAR(128) NOT NULL,
    description NVARCHAR(256),
)

CREATE TABLE Author
(
    id    INT PRIMARY KEY IDENTITY (1, 1),
    name  NVARCHAR(128),
    about NVARCHAR(256),
)

CREATE TABLE Student
(
    code   VARCHAR PRIMARY KEY,
    name   NVARCHAR(128) NOT NULL,
    age    INT           NOT NULL,
    gender CHAR,
)

CREATE TABLE Book
(
    id          INT PRIMARY KEY IDENTITY (1, 1),
    name        NVARCHAR(128) NOT NULL UNIQUE,
    description NVARCHAR(256),
    authorId    INT,
    catelogId   INT,
    FOREIGN KEY (catelogId) REFERENCES Catelog (id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (authorId) REFERENCES Author (id) ON UPDATE CASCADE ON DELETE SET NULL,
)

CREATE TABLE CallCard
(
    bookId      INT     NOT NULL,
    studentCode VARCHAR NOT NULL,
    borrowDate  DATE    NOT NULL,
    expiredDate DATE    NOT NULL,
    PRIMARY KEY (bookId, studentCode),
    FOREIGN KEY (studentCode) REFERENCES Student (code) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (bookId) REFERENCES Book (id) ON UPDATE CASCADE ON DELETE CASCADE
)