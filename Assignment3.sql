

create database SavitribaiPhule_university
create table College_Table (College_ID int primary key, College_Name varchar(100), College_Area varchar(25))
select * from College_Table
--foreign key (dept_id) refrences Department_Table(Dept_id))
insert into College_Table values (1, 'Jayavantrao shikshan Prasarak Mandal', 'Hadapsar')
insert into College_Table values (2, 'Sinhgadh Institute', 'Narhe')
insert into College_Table values (3, 'Indira College of Commerce and Arts', 'Hinjewadi')
insert into College_Table values (4, 'Jayavantrao shikshan Prasarak Mandal', 'Katraj')
insert into College_Table values (5, 'Suryadatta Institute of Managment', 'Undri')
insert into College_Table values (6, 'Sinhgadh Institute', 'Talegaon')
insert into College_Table values (7, 'Yashvantrao college of Commerce', 'Wakad')
insert into College_Table values (8, 'Annasaheb Magar Shikshan Sansthas Arts college', 'Wagholi')
insert into College_Table values (9, 'Pune College of Engineering', 'Vadgaonsheri')
insert into College_Table values (10, 'Mr Wadia college of Social Science', 'Mundwa')



create table Department_Table (Dept_ID int Primary key, Dept_Name varchar(25), Dept_Facility varchar(30))

select * from Department_Table
insert into Department_Table values (1, 'Computer Science', 'Computer Lab A')
insert into Department_Table values (2, 'Mechanical Engineering', 'Computer Lab 2')
insert into Department_Table values (3, 'Business Administration', 'Student Advising')
insert into Department_Table values (4, 'Electrical Engineering', 'Computer Lab 1')
insert into Department_Table values (5, 'Social Science', 'Equipment Room')
insert into Department_Table values (6, 'Physics', 'Physics Lab 1')
insert into Department_Table values (7, 'Chemistry', 'Chemical Lab 2')
insert into Department_Table values (8, 'Political Science', 'Conference Room 1')
insert into Department_Table values (9, 'Account', 'Documents room')
insert into Department_Table values (10, 'Costing', 'Audit files room')

ALTER TABLE Department_Table
ADD CONSTRAINT FK_Department_College_ID
FOREIGN KEY (Dept_ID)
REFERENCES College_Table(College_ID); 



create table Professor_Table (Professor_ID int primary key, Professor_Name varchar(50), Professor_Subject varchar(25))
select * from Professor_Table
insert into Professor_Table values (1, 'Mr Anad Khadge', 'Marathi')
insert into Professor_Table values (2, 'Mr Ujjwal Chaturvedi', 'Robotics')
insert into Professor_Table values (3, 'Mrs Aruna Kale', 'English')
insert into Professor_Table values (4, 'Mr Digvijay Singh', 'Mathamatics')
insert into Professor_Table values (5, 'Mrs Poona Shrivastav', 'Sanskrut')
insert into Professor_Table values (6, 'Mr Ashish Chourasia', 'Social Science')
insert into Professor_Table values (7, 'Mr Mithun kumar', 'Managment')
insert into Professor_Table values (8, 'Ms Jyothi HR', 'Mechanical Mathematics')
insert into Professor_Table values (9, 'Mr Ridhika Chaturvedi', 'Physics')
insert into Professor_Table values (10, 'Mr Anshika AC', 'Chemistory')


create table Student_Table (Student_ID int primary key, Student_Name varchar (50), Student_Stream varchar (25))
select * from Student_Table
insert into Student_Table values (1, 'Mr Ankit Jha', 'Science' )
insert into Student_Table values (2, 'Mr Hitesh Bodke', 'Arts' )
insert into Student_Table values (3, 'Mr Atul K', 'Comerce' )
insert into Student_Table values (4, 'Ms Sonia Gupta', 'BE Computer' )
insert into Student_Table values (5, 'Ms Pinku Soni', 'BE Mechanical' )
insert into Student_Table values (6, 'Ms Farry Kumari', 'ITI' )
insert into Student_Table values (7, 'Ms Sneha KC', 'MBA Finance' )
insert into Student_Table values (8, 'Ms Priya Kaustubh', 'political Science' )
insert into Student_Table values (9, 'Mr Prisha Rajdhwani', 'MBA Marketing' )
insert into Student_Table values (10, 'Ms Raji kaur', 'MBA HR' )
select * from Student_Table

ALTER TABLE Student_Table
ADD CONSTRAINT FK_Student_Professor
FOREIGN KEY (Student_ID)
REFERENCES Professor_Table(Professor_ID); 

select college_id, college_name
from College_Table

select TOP 5*
from Student_Table
ORDER BY Student_ID

select professor_name 
from Professor_Table
where Professor_ID = 5

select upper(professor_name) as uppercase_professorname
from professor_table

select * from Student_Table

select Student_Name
from Student_Table
where Student_Name LIKE 'A%';

select * from College_Table
select college_name
from College_Table
where College_Name LIKE '%a'

select * from Professor_Table
alter table professor_table
add Salary decimal (12,2)

select * from Student_Table
alter table student_table
add Contact decimal (10,0)

alter table student_table
alter column contact numeric 


select * from Department_Table
select top 5 a. student_ID, a.student_name, a.Student_Stream, b.Professor_Name, b.Professor_Subject, Professor_ID
from Student_Table a
LEFT JOIN Professor_Table b
on a.Student_ID=b.Professor_ID
order by Student_ID


select a.college_id, a.College_Name, b.Dept_id, c.professor_id, D.student_name
from College_Table a
INNER JOIN student_name
on a.college_id=d.student_name
INNER JOIN college_name a
on d.student_name=c.professor_name
INNER JOIN professor_id.c
on b.dept_id=c.professor_id


select * from Department_Table
select * from Professor_Table
select * from Department_Table
where Dept_Name is NULL
select * from Professor_Table
where salary is NULL


create view collegenamestarts_c AS
select * from College_Table
where College_Name LIKE 'c%'
select * from collegenamestarts_c


create procedure storedprocedure_professor_id
@professor_id int
AS
BEGIN
select * from Professor_Table
where Professor_ID = @professor_id
end;

EXEC storedprocedure_professor_id @professor_id = 3;


create procedure procedurebystudent_id
@student_id int
AS
BEGIN
select * from Student_Table
where Student_ID=@student_id
end
exec procedurebystudent_id @student_id = 2

create procedure procedurebydept_id
@dept_id int
AS
BEGIN
select * from Department_Table
where Dept_ID=@dept_id
end
exec procedurebydept_id @dept_id=6

EXEC sp_rename 'College_Table', 'College_Tables_Data';
SELECT * FROM College_Tables_Data

exec SP_rename 'College_Tables_Data', College_Table
select * from college_table
