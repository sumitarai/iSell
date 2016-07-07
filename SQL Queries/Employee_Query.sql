
select * from dbo.employee


--show the employees with emp ID for 2 and 3

select * from dbo.employee where employeeNo in (2,3)


--show employee who have emailID
select * from dbo.employee where EmailID is not NULL
