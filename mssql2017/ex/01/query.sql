SELECT E.empid          AS MaNv,
       E.empname        AS TenNv,
       E.salary         AS Luong,
       E.sex            AS GioiTing,
       D.departmentname AS TenPhong
FROM Employee E
         JOIN Department D ON E.DepartmentId = D.DepartmentId

SELECT *
FROM Employee
WHERE Employee.EmpName LIKE '%g'

SELECT CONCAT(E.empid, '-', E.empname)               AS NhanVien,
       CONCAT(D.DepartmentId, '-', D.departmentname) AS Phong
FROM Employee E
         JOIN Department D ON E.DepartmentId = D.DepartmentId

UPDATE Employee
SET Status = NULL
WHERE Status = 0;

DELETE Employee
WHERE Status IS NULL

CREATE INDEX EmpName_Idx ON Employee (EmpName)

DROP VIEW IF EXISTS vwEmployee
CREATE VIEW vwEmployee AS
SELECT EmpName        AS [Ten Nhan Vien],
       DepartmentName AS [Ten Phong Ban],
       Location       AS [Noi Lam Viec],
       EmpTypeName    AS [Loai Nhan Vien]
FROM Employee E
         LEFT JOIN EmployeeType ET ON E.EmpTypeId = ET.EmpTypeId
         LEFT JOIN Department D ON E.DepartmentId = D.DepartmentId
GO

CREATE PROCEDURE SelectBySalary @min FLOAT, @max FLOAT
AS
SELECT *
FROM Employee
WHERE Salary >= @min
  AND Salary <= @max
GO

CREATE PROCEDURE SelectBySalaryBiggerThan7Mil
AS
SELECT *
FROM Employee
WHERE Salary >= 7000000
GO
