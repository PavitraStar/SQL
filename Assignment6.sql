create database assignment6
use assignment6
create table EmployeeDetails (EmployeeID int primary key, FirstName varchar(15), LastName varchar(15), Salary int, JoiningDate datetime, Department varchar(10), Gender varchar(10))
insert into EmployeeDetails values (1, 'Vikas', 'Ahlawat', 600000, '2013-12-12 11:16:00', 'IT', 'Male')
select * from EmployeeDetails
insert into EmployeeDetails values (2, 'Nikita', 'Jain', 530000, '2013-12-12 14:16:00', 'HR', 'Male')
insert into EmployeeDetails values (3, 'Ashish', 'Kumar', 1000000, '2013-02-14 11:16:00', 'IT', 'Male')
insert into EmployeeDetails values (4, 'Nikhil', 'Sharma', 480000, '2013-02-15 11:16:00', 'HR', 'Male')
insert into EmployeeDetails values (5, 'Anish', 'Kadian', 500000, '2013-02-16 11:16:00', 'Payroll', 'Male')

create table ProjectDetails(ProjectDetailID int primary key, EmployeeID int, ProjectName varchar(25))
select * from ProjectDetails
insert into ProjectDetails values (1, 1, 'TaskTrack')
insert into ProjectDetails values (2, 1, 'CLP')
insert into ProjectDetails values (3, 1, 'SurveyManagment')
insert into ProjectDetails values (4, 2, 'HRManagment')
insert into ProjectDetails values (5, 3, 'TaskTrack')
insert into ProjectDetails values (6, 3, 'GRS')
insert into ProjectDetails values (7, 3, 'DDS')
insert into ProjectDetails values (8, 4, 'HRManagment')
insert into ProjectDetails values (9, 6, 'GLManagment')

select * from EmployeeDetails
select firstname
from EmployeeDetails

select UPPER(firstname)
from EmployeeDetails

select concat(firstname, ' ', lastname) AS Name
from EmployeeDetails

select * from EmployeeDetails
where FirstName='vikas'

select * from EmployeeDetails
where FirstName like ('a%')

select * from EmployeeDetails
where FirstName like ('%h')

select * from EmployeeDetails
where FirstName like ('[a-p]%')

select * from EmployeeDetails
where FirstName not like ('[a-p]%')

SELECT * 
FROM EmployeeDetails
WHERE Gender LIKE '____le';

select * from EmployeeDetails
where firstname like 'a_____'

select * from EmployeeDetails
where firstname like '%/%%'

select DISTINCT Department from EmployeeDetails

select top 1 salary
from EmployeeDetails
order by salary desc


select top 1 salary
from EmployeeDetails
order by salary asc

SELECT FORMAT(JoiningDate, 'dd MMM yyyy') AS FormattedJoiningDate
FROM EmployeeDetails;


select FORMAT(joiningdate, 'yyyy/mm/dd') as formatdate
from EmployeeDetails

select  convert(time, joiningdate) as timepart
from EmployeeDetails

select EXTRACT(year from joiningdate) as yearpart 
from EmployeeDetails


select MONTH(JoiningDate) as month
from EmployeeDetails

select GETDATE();

select GETUTCDATE()

SELECT 
    FirstName, 
    GETDATE() AS CurrentDate, 
    JoiningDate, 
    DATEDIFF(MONTH, JoiningDate, GETDATE()) AS MonthsSinceJoining
FROM 
    EmployeeDetails;

	SELECT * 
FROM EmployeeDetails
WHERE YEAR(JoiningDate) = 2013

select * from EmployeeDetails
WHERE month(JoiningDate) = 1

SELECT COUNT(*) AS TotalEmployees
FROM EmployeeDetails

select top 1 * from EmployeeDetails

select * from EmployeeDetails
where FirstName in('vikas', 'ashish', 'nikhil')

select * from EmployeeDetails
where FirstName not in('vikas', 'ashish', 'nikhil')

select rtrim (firstname) as firstname
from EmployeeDetails


select LTRIM(firstname) as firstname
from EmployeeDetails

select firstname,

case
when Gender= 'male' then 'M'
when Gender= 'female' then 'F'
else 'unknow'
 end as gender
 from EmployeeDetails

 select 'Hello'+firstname as greeting
 from EmployeeDetails

 select * from EmployeeDetails
 where Salary>600000


 select * from EmployeeDetails
 where Salary>700000

 select * from EmployeeDetails
 where Salary between	500000 and 600000