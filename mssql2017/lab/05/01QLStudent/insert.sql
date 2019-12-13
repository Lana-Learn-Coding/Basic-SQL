INSERT INTO Subject(SName)
VALUES ('SQL'),
       ('LGC'),
       ('CF'),
       ('HTML')

INSERT INTO Student(Name, Age)
VALUES (N'Mỹ Linh', 15),
       (N'Đàm Vĩnh Hưng', 16),
       (N'Kim Tử Long', 17),
       (N'Tài Linh', 18),
       (N'Mỹ Lệ', 19),
       (N'Ngọc Oanh', 20)

INSERT INTO StudentSubject(RN, SID, Mark, Date)
VALUES (1, 1, 8, '2005-07-28'),
       (2, 2, 3, '2005-07-29'),
       (3, 4, 9, '2005-07-31'),
       (4, 1, 5, '2005-07-30'),
       (5, 3, 10, '2005-07-19'),
       (6, 1, 9, '2005-07-25')

UPDATE Student
SET Gender = 'F'
WHERE Name = N'Mỹ Linh'
   OR Name = N'Tài Linh'
   OR Name = N'Mỹ Lệ'
UPDATE Student
SET Gender = 'M'
WHERE Name = N'Kim Tử Long'
   OR Name = N'Đàm Vĩnh Hưng'

INSERT INTO Subject(SName)
VALUES ('Core Java'),
       ('VB.NET')