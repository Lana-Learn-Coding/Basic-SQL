DROP TABLE IF EXISTS SalaryMonth
DROP TABLE IF EXISTS AptechEmployees
DROP TABLE IF EXISTS TaxType
DROP TABLE IF EXISTS SalaryLevel

CREATE TABLE SalaryLevel
(
    SalaryLevelID INT PRIMARY KEY NOT NULL,
    LEVEL         CHAR(1)         NOT NULL,
    DESCRIPTION   NVARCHAR(128)
)

CREATE TABLE TaxType
(
    CodeID   INT PRIMARY KEY IDENTITY (1,1),
    TaxName  NVARCHAR(128) NULL UNIQUE,
    Discount FLOAT         NULL
)

CREATE TABLE AptechEmployees
(
    EmployeeID   INT PRIMARY KEY NOT NULL,
    CodeID       INT             NOT NULL,
    EmployeeName NVARCHAR(256)   NULL,
    DateOfBirth  DATETIME        NOT NULL,
    FOREIGN KEY (CodeID) REFERENCES TaxType (CodeID),
    CHECK (DateOfBirth BETWEEN '01-01-1970' AND '01-01-1985')
)

CREATE TABLE SalaryMonth
(
    EmployeeID    INT,
    SalaryLevelID INT,
    Ratio         FLOAT NOT NULL DEFAULT 1,
    Bonus         FLOAT NULL,
    PRIMARY KEY (EmployeeID, SalaryLevelID),
    FOREIGN KEY (EmployeeID) REFERENCES AptechEmployees (EmployeeID),
    FOREIGN KEY (SalaryLevelID) REFERENCES SalaryLevel (SalaryLevelID)
)