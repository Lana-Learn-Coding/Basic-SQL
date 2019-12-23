DROP TABLE IF EXISTS ClassStudent
DROP TABLE IF EXISTS Marks
DROP TABLE IF EXISTS Subjects
DROP TABLE IF EXISTS Classes
DROP TABLE IF EXISTS Students

CREATE TABLE Students
(
    StudentID   INT PRIMARY KEY     NOT NULL,
    StudentName NVARCHAR(128)       NOT NULL,
    Age         INT CHECK (Age > 0) NULL,
    Email       NVARCHAR(128)       NOT NULL
)

CREATE TABLE Classes
(
    ClassID   INT PRIMARY KEY NOT NULL,
    ClassName VARCHAR(32)     NOT NULL
)

CREATE TABLE Subjects
(
    SubjectID   INT PRIMARY KEY NOT NULL,
    SubjectName NVARCHAR(128)   NOT NULL
)

CREATE TABLE ClassStudent
(
    ClassID   INT,
    StudentID INT,
    PRIMARY KEY (StudentID, ClassID),
    FOREIGN KEY (ClassID) REFERENCES Classes (ClassID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (StudentID) REFERENCES Students (StudentID) ON UPDATE CASCADE ON DELETE CASCADE,
)

CREATE TABLE Marks
(
    SubjectID INT,
    StudentID INT,
    Mark      FLOAT NULL,
    PRIMARY KEY (StudentID, SubjectID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects (SubjectID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (StudentID) REFERENCES Students (StudentID) ON UPDATE CASCADE ON DELETE CASCADE,
)

INSERT INTO Students(StudentID, StudentName, Age, Email)
VALUES (1, 'Nguyen Quang An', 18, 'an@yahoo.com'),
       (2, 'Nguyen Cong Vinh', 20, 'vinh@gmail.com'),
       (3, 'Nguyen Van Quyen', 19, 'quyen'),
       (4, 'Pham Thanh Binh', 25, 'binh@com'),
       (5, 'Nguyen Van Tai Em', 30, 'taiem@sport.vn')

INSERT INTO Classes(ClassID, ClassName)
VALUES (1, 'C1506L'),
       (2, 'C1603G')

INSERT INTO Subjects(SubjectID, SubjectName)
VALUES (1, 'SQL'),
       (2, 'Java'),
       (3, 'C'),
       (4, 'Visual Basic')

INSERT INTO ClassStudent(ClassID, StudentID)
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (2, 4),
       (2, 5)

INSERT INTO Marks(SubjectID, StudentID, Mark)
VALUES (1, 1, 8),
       (2, 1, 4),
       (1, 3, 7),
       (1, 4, 3),
       (2, 5, 5),
       (3, 3, 8),
       (3, 5, 1),
       (2, 4, 3)