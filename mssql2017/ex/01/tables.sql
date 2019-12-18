DROP TABLE IF EXISTS Employee
DROP TABLE IF EXISTS Department
DROP TABLE IF EXISTS EmployeeType


CREATE TABLE EmployeeType
(
    EmpTypeId   INT PRIMARY KEY IDENTITY,
    EmpTypeName NVARCHAR(50) NULL,
    Status      BIT          NULL,
)

CREATE TABLE Department
(
    DepartmentId   INT PRIMARY KEY IDENTITY,
    DepartmentName NVARCHAR(50) NULL,
    Location       NVARCHAR(50) NULL,
    Status         BIT          NULL,
)

CREATE TABLE Employee
(
    EmpId        NVARCHAR(50) PRIMARY KEY,
    EmpName      NVARCHAR(50) NULL,
    HireDate     DATE         NULL,
    Salary       FLOAT        NULL,
    Email        NVARCHAR(50) NULL,
    Phone        NVARCHAR(50) NULL,
    Sex          BIT          NULL,
    Status       BIT          NULL,
    DepartmentId INT          NOT NULL
        FOREIGN KEY REFERENCES Department (DepartmentId),
    EmpTypeId    INT          NOT NULL
        FOREIGN KEY REFERENCES EmployeeType (EmpTypeId)
)
