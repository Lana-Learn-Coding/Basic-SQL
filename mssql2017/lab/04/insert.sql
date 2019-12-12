INSERT INTO SalaryLevel(SalaryLevelID, LEVEL, DESCRIPTION)
VALUES (1, 'A', 'Truong Phong'),
       (2, 'B', 'Truong Huyen')

INSERT INTO TaxType(taxname, discount)
VALUES ('Thue than', 16.8),
       ('Thue thu nhap ca nhan', 40),
       ('Thue de con trai', 80.5)

INSERT INTO AptechEmployees(EMPLOYEEID, CODEID, EMPLOYEENAME, DATEOFBIRTH)
VALUES (1, 1, 'Trinh Van Trung', '1979-03-08'),
       (2, 2, 'Loi Duc Chung', '1980-11-26')

INSERT INTO SalaryMonth(EMPLOYEEID, SALARYLEVELID, RATIO, BONUS)
VALUES (1, 2, 8.5, 888),
       (2, 1, 6.9, 999)