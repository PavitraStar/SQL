create database Employee
create table EmployeeDetail (EMP_ID int, Full_Name varchar(50), Manager_ID int, DateOfJoining date, City varchar(25))
insert into EmployeeDetails values (121,'John Snow', 321, 2019-01-31''Toronto')
insert into EmployeeDetail values (121,'John Snow', 321, '2019-01-31', 'Toronto')
select * from EmployeeDetail
insert into EmployeeDetail values (321, 'Walter White',986,'2020-01-30', 'California')
insert into EmployeeDetail values (421, 'Kuldep Rana', 876, '2021-11-27', 'New Delhi')
use employee
create table EmployeeSalary (EMP_ID int, Project varchar(5), salary numeric(12,2), variable numeric(12,2))
select * from employeesalary
insert into employeesalary values(121, 'P1', '8000', '500')
insert into employeesalary values(321, 'P2', 10000, '1000')
insert into employeesalary values(421, 'P', 12000, '0')
--join
select * from EmployeeDetail
select a.*
from EmployeeDetail a
LEFT JOIN employeesalary b
on a.EMP_ID = b.EMP_ID
where b.EMP_ID is NULL;

SELECT e.EMP_ID, e.Full_Name
FROM EmployeeDetail e
WHERE NOT EXISTS (
    SELECT 1
    FROM employeesalary ep
    WHERE ep.EMP_ID = e.EMP_ID
);
select * from EmployeeDetail where year (dateofjoining) = 2020

select e.*
from EmployeeDetail e
inner join employeesalary s
on e.emp_id=s.emp_id;
----------------------------------------------------------------------------------query-------------------------
select project, count (emp_id) as employee_count
from employeesalary 

select e.full_name, s.salary, e.emp_id
from EmployeeDetail e
left join employeesalary s
on e.EMP_ID=s.emp_id;

select e.* 
from EmployeeDetail e
where e.emp_id in(
select distinct Manager_id
from EmployeeDetail
where Manager_id is not null
);

select emp_id, full_name, count (*)
from EmployeeDetail
group by emp_id, full_name
having count(*) > 1;

WITH RowNumbered AS (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS row_num
    FROM EmployeeDetail
)
SELECT *
FROM RowNumbered
WHERE row_num % 2 = 1;

with salaryrank AS (
select salary,
row_number() OVER (order by salary desc) as row_number
from employeesalary 
)
select salary
from salaryrank
where row_number = 3;

select emp_id, full_name from EmployeeDetail where manager_id='986'

select distinct project from employeesalary

select count(*) AS project_count
from employeesalary
where project='P1'


select * from EmployeeDetail
select * from employeesalary

select avg(salary) as average_salary
from employeesalary
select max(salary) as maximum_salary
from employeesalary
select min(salary) as min_salary
from employeesalary

select emp_id 
from employeesalary
  where salary > 9000 and salary < 15000

  select * from EmployeeDetail
  where city = 'Toronto' 
  and manager_id = 321;

  select * from EmployeeDetail
  where city = 'california'
  or manager_id = 321;

  select emp_id 
  from employeesalary
  where project <> 'P1';


  DECLARE  @SalaryIncrement DECIMAL(10, 2);
SET @SalaryIncrement = 5000
  select emp_id, salary,variable
  salary + @salaryincrement as total salary
  from employeesalary;


  select emp_id, full_name from EmployeeDetail
  where full_name like '_hn%'

  select emp_id from EmployeeDetail
  union
  select emp_id from employeesalary

  select e.emp_id, e.full_name, e.city
  from EmployeeDetail e
  inner join employeesalary s
  on e.emp_id=s.emp_id

  select e.emp_id, e.full_name, e.city
  from EmployeeDetail e
  left join employeesalary p
  on e.emp_id=p.emp_id

  select q.emp_id, q.full_name
  from EmployeeDetail q
  inner join employeesalary a
  on q.emp_id=a.emp_id

  select e.emp_id, e.full_name, e.city
  from EmployeeDetail e
  left join employeesalary p
  on e.emp_id=p.emp_id

 


  SELECT Emp_Id,
       Full_Name,
       REPLACE(Full_Name, ' ', '_') AS FullNameWithoutSpaces
FROM EmployeeDetail;


SELECT Emp_Id,
       Full_Name,
       CHARINDEX('h', Full_Name) AS PositionOfN
FROM EmployeeDetail;

select emp_id, manager_id
from EmployeeDetail

select * from EmployeeDetail
select * from employeesalary

select emp_id,
left(full_name, charindex(' ', full_name)-1) as firstname
from EmployeeDetail
where charindex(' ', full_name) > 0;

select emp_id,
UPPER(full_name) as uppercasename,
LOWER(city) as lowercasecity
from EmployeeDetail;

select emp_id,
lower(full_name) as lowercasename,
upper(city) as uppercasecity
from EmployeeDetail

SELECT SUM(LEN(Full_Name) - LEN(REPLACE(Full_Name, 'n', ''))) AS OccurrencesOfN
FROM EmployeeDetail;

update  EmployeeDetail
set full_name = TRIM(Full_name);

select b.emp_id, b.full_name
from EmployeeDetail b
left join employeesalary c
on b.emp_id=c.emp_id
where c.project= null;

select a.emp_id, a.full_name
from EmployeeDetail a
join employeesalary b 
on a.emp_id=b.emp_id
where b.salary >= 5000 and b.salary <= 10000

select getdate() as currentdatetime

select * from EmployeeDetail
where year(dateofjoining) = 2020

select a.*
from EmployeeDetail a
inner join employeesalary b
on a.emp_id=b.emp_id

select b.project, count (b.emp_id) as countofemployees
from employeesalary b
group by b.project
order by countofemployees desc;

select a.full_name, b.salary
from EmployeeDetail a
left join employeesalary b
on a.emP_id=b.emp_id


select a.full_name, a.full_name, c.salary, d.department
from EmployeeDetail a
join employeesalary b on a.emp_id=b.emp_id
join depertment d on a.emp_id=d.emp_id