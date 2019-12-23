DROP PROCEDURE IF EXISTS get_student_subject_mark
DROP PROCEDURE IF EXISTS set_zero_mark
DROP PROCEDURE IF EXISTS get_all_student_subject_mark
GO

CREATE PROCEDURE get_all_student_subject_mark @StudentID INT
AS
SELECT SubjectName, Mark
FROM Marks
         LEFT JOIN Subjects ON Marks.SubjectID = Subjects.SubjectID
WHERE StudentID = @StudentID
GO

CREATE PROCEDURE set_zero_mark @StudentID INT
AS
UPDATE Marks
SET Mark = 0
WHERE StudentID = @StudentID
GO

CREATE PROCEDURE get_student_subject_mark @StudentID INT, @SubjectsID INT
AS
SELECT StudentID, SubjectName, Marks.SubjectID, SubjectName, Mark
FROM Marks
         LEFT JOIN Subjects ON Marks.SubjectID = Subjects.SubjectID
WHERE StudentID = @StudentID
  AND Marks.SubjectID = @SubjectsID
GO