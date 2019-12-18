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

