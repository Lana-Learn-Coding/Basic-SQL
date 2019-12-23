DROP VIEW IF EXISTS vw_all_students
DROP VIEW IF EXISTS vw_all_classes
DROP VIEW IF EXISTS vw_all_students_valid_email
DROP VIEW IF EXISTS vw_nguyen
DROP VIEW IF EXISTS vw_all_students_C1506L
DROP VIEW IF EXISTS vw_all_students_mark
DROP VIEW IF EXISTS vw_all_students_not_mark
DROP VIEW IF EXISTS vw_all_subject_max_many_low
DROP VIEW IF EXISTS vw_all_subject_max_many_students
DROP VIEW IF EXISTS vw_all_subject_max_mark
DROP VIEW IF EXISTS vw_all_students_avg_mark
DROP VIEW IF EXISTS vw_all_subject_not_students
GO

CREATE VIEW vw_all_students
AS
SELECT *
FROM Students
GO

CREATE VIEW vw_all_classes
AS
SELECT *
FROM Classes
GO

CREATE VIEW vw_all_students_valid_email
AS
SELECT *
FROM Students
WHERE Email LIKE '%@%.%'
GO

CREATE VIEW vw_nguyen
AS
SELECT *
FROM Students
WHERE StudentName LIKE 'Nguyen%'
GO

CREATE VIEW vw_all_students_C1506L
AS
SELECT ClassStudent.StudentID, StudentName, Age, Email, ClassStudent.ClassID, ClassName
FROM Students
         LEFT JOIN ClassStudent ON Students.StudentID = ClassStudent.StudentID
         LEFT JOIN Classes ON ClassStudent.ClassID = Classes.ClassID
WHERE ClassName = 'C1506L'
GO

CREATE VIEW vw_all_students_mark
AS
SELECT Students.StudentID, StudentName, Age, Email, SubjectName, Mark
FROM Students
         LEFT JOIN Marks ON Students.StudentID = Marks.StudentID
         LEFT JOIN Subjects ON Marks.SubjectID = Subjects.SubjectID
GO

CREATE VIEW vw_all_students_not_mark
AS
SELECT Students.StudentID, StudentName, Age, Email, Mark
FROM Students
         LEFT JOIN Marks ON Students.StudentID = Marks.StudentID
WHERE Marks.StudentID IS NULL
GO

CREATE VIEW vw_all_subject_not_students
AS
SELECT Subjects.SubjectID, SubjectName
FROM Subjects
         LEFT JOIN Marks ON Subjects.SubjectID = Marks.SubjectID
WHERE Marks.SubjectID IS NULL
GO

CREATE VIEW vw_all_students_avg_mark
AS
SELECT Students.StudentID, StudentName, Age, Email, SUM(Mark) / COUNT(Mark) AS Total
FROM Students
         LEFT JOIN Marks ON Students.StudentID = Marks.StudentID
GROUP BY Students.StudentID, StudentName, Age, Email, Marks.StudentID
GO

CREATE VIEW vw_all_subject_max_many_students
AS
SELECT TOP 1 Subjects.SubjectID, SubjectName, COUNT(DISTINCT StudentID) AS NumberOfStudent
FROM Subjects
         INNER JOIN Marks ON Subjects.SubjectID = Marks.SubjectID
GROUP BY Subjects.SubjectID, SubjectName
ORDER BY NumberOfStudent DESC
GO

CREATE VIEW vw_all_subject_max_mark
AS
SELECT TOP 1 Subjects.SubjectID, SubjectName, MAX(Mark) AS Mark
FROM Subjects
         INNER JOIN Marks ON Subjects.SubjectID = Marks.SubjectID
GROUP BY Subjects.SubjectID, SubjectName
ORDER BY Mark DESC
GO

CREATE VIEW vw_all_subject_max_many_low
AS
SELECT TOP 1 Subjects.SubjectID, SubjectName, COUNT(Mark) AS Low
FROM Subjects
         INNER JOIN Marks ON Subjects.SubjectID = Marks.SubjectID
WHERE Mark < 5
GROUP BY Subjects.SubjectID, SubjectName
ORDER BY Low DESC
GO