create table EmployeePayroll(
Id int primary key identity,
name varchar(50),
email varchar(50),
phone varchar(15),
password varchar(20),
);
go

create proc SpAddEmployeeDetails
@EmployeeName varchar(50),
@Email varchar(50),
@PhoneNumber varchar(15),
@Password varchar(20)
as
Begin
insert into EmployeePayroll (name,email,phone,password)
values(@EmployeeName,@Email,@PhoneNumber, @Password)
End

select * from EmployeePayroll