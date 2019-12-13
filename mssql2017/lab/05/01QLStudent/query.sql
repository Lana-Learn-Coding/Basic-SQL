SELECT *
FROM Student

SELECT *
FROM Subject

SELECT Student.RN, Name, SName, Mark
FROM Student
         LEFT JOIN StudentSubject ON Student.RN = StudentSubject.RN
         LEFT JOIN Subject ON StudentSubject.SID = Subject.SID
WHERE Mark > 8

SELECT Student.RN, Name, SName, Mark
FROM Student
         LEFT JOIN StudentSubject ON Student.RN = StudentSubject.RN
         LEFT JOIN Subject ON StudentSubject.SID = Subject.SID
WHERE Mark > 0
  AND Mark < 5

SELECT RN, Name, Age, Gender
FROM Student
WHERE Age > 18
  AND Gender = 'F'

SELECT RN, Name, Gender
FROM Student
WHERE (Gender = 'M' AND Name LIKE 'K%')
   OR (Gender = 'F' AND Name LIKE '%H')

SELECT RN, Name, Gender
FROM Student
WHERE Name LIKE N'%thị%'
   OR Name LIKE N'%tử%'

SELECT TOP 3 PERCENT *
FROM Student
