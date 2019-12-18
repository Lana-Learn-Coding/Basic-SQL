INSERT INTO EmployeeType(EmpTypeName, Status)
VALUES (N'nhân viên cơ hữu', 1),
       (N'nhân viên cộng tác', 1),
       (N'Nhân viên fulltime', 0)

INSERT INTO Department(DepartmentName, Location, Status)
VALUES (N'Phòng CMLT', 304, 1),
       (N'Phòng CMM', 306, 1),
       (N'Phòng Đào Tạo', 301, 0)

INSERT INTO Employee(EmpId, EmpName, HireDate, Salary, Email, Phone, Sex, Status, DepartmentId, EmpTypeId)
VALUES ('B001', N'Nguyễn Công Phượng', '2017-05-14', '10000000', 'phuongnc@gmail.com', '0948385837', 1, 1, 1, 1),
       ('B002', N'Nguyễn Trung Hiếu', '2014-06-08', '8000000', 'hieunt@gmail.com', '0904488485', 1, 1, 2, 2),
       ('B003', N'Nguyễn Thị Thủy', '2013-09-06', '9000000', 'thuynt@gmail.com', '0904305253', 0, 1, 3, 3),
       ('B004', N'Nguyễn Thị Thắm', '2017-05-14', '700000', 'thamnt@gmail.com', '098765432', 0, 1, 2, 1),
       ('B005', N'Lê Thanh Thủy', '2012-02-01', '40000', 'thuynt@gmail.com', '098734567', 0, 0, 1, 1)

