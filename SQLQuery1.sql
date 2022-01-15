create table EmployeePayroll(
Id int primary key identity,
name varchar(50),
email varchar(15),
phone varchar(15),
password varchar(15),
);
go

create proc SpAddEmployeeDetails
@EmployeeName varchar(50),
@Email varchar(20),
@PhoneNumber varchar(15),
@Password varchar(20)
as

insert into employee_payroll values (@EmployeeName, @PhoneNumber, @Email, @Password)

select * from Emp