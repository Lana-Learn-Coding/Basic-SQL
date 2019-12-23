CREATE TRIGGER trg_delete_student
    ON Students
    INSTEAD OF DELETE
    AS
BEGIN
    DELETE Marks
    FROM Marks
             RIGHT JOIN deleted ON Marks.StudentID = deleted.StudentID
    DELETE ClassStudent
    FROM ClassStudent
             RIGHT JOIN deleted ON ClassStudent.StudentID = deleted.StudentID
    DELETE Students
    FROM Students
             RIGHT JOIN deleted ON Students.StudentID = deleted.StudentID
END

CREATE TRIGGER trg_add_mark
    ON Marks
    FOR INSERT , UPDATE
    AS
    IF (EXISTS(SELECT 1
               FROM inserted
               WHERE Mark < 0))
        THROW 51000, 'Mark must >= 0',1
