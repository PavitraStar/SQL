create database Assignment_4
create table Students(StudentID int primary key, Name varchar (15), surnamr varchar(15), Birthdate date, Gender varchar(10), Class varchar(15), Point decimal(10,2))
select * from Students
insert into Students values (1, 'Sonu', 'Singh', '1986-11-30', 'Male', '9th', 80.54)
insert into Students values (2, 'Monika', 'Rama', '1982-09-03', 'Female', '10th', 70.13)
insert into Students values (3, 'Tulsi', 'Das', '1989-11-03', 'Male', '8th', 78.13)
insert into Students values (4, 'Pincy', 'Gouri', '1985-05-30', 'Female', '7th', 89.62)
insert into Students values (5, 'Renu', 'Bansal', '1981-01-30', 'Female', '6th', 96.13)
insert into Students values (6, 'Willias', 'Thomas', '1992-01-14', 'Female', '6th', 40.13)
insert into Students values (7, 'Allen', 'Sally', '1990-05-12', 'Female', '6th', 63.13)
insert into Students values (8, 'Eilli', 'Bob', '1981-03-16', 'Female', '6th', 80.13)
insert into Students values (9, 'Rocky', 'Tiky', '1984-11-16', 'Female', '6th', 63.89)
insert into Students values (10, 'Anki', 'Gussi', '1982-12-30', 'Female', '6th', 50.13)
insert into Students values (11,'Thomas', 'Nelson', '1982-12-30', 'male', '10th', 80.00)
insert into Students values (12,'Sally', 'Allen', '1982-12-30', 'female', '9th', 80.00)
insert into Students values (13,'Linda', 'Sandra', '1982-12-30', 'female', '11th', 80.00)


create table Borrows (BorrowID int, StudentID int, BookID int primary key, TakenDate date, BroughtDate date)
select * from Borrows
insert into Borrows values ('11', '1', '1000', '2004-06-05', '2015-12-01')
insert into Borrows values ('12', '2', '1001', '2002-03-10', '2015-12-01')
insert into Borrows values ('13', '3', '1002', '2004-08-13', '2015-12-01')
insert into Borrows values ('14', '4', '1003', '2003-06-29', '2015-12-01')
insert into Borrows values ('15', '5', '1004', '2004-04-30', '2015-12-01')
insert into Borrows values ('15', '6', '1005', '2004-03-19', '2015-12-01')
insert into Borrows values ('15', '7', '1006', '2001-04-30', '2015-12-01')
insert into Borrows values ('15', '8', '1007', '2005-11-16', '2015-12-01')
insert into Borrows values ('15', '9', '1008', '2006-09-28', '2015-12-01')
insert into Borrows values ('15', '10', '1009', '2004-04-16', '2015-12-01')



Create table Books (BookID int primary key, Name varchar(25), Pagecount int, Point decimal(5,2), AuthorID int, TypeID int)
select * from Books
insert into Books values ('1000', 'Wings of Fire', '500', '10', '51', '1051')
insert into Books values ('1001', 'Pride and Prejudice', '800', '15', '69', '1070')
insert into Books values ('1002', 'Moby-Dick', '678', '16', '58', '1060')
insert into Books values ('1003', 'To Kill a Mockingbird ', '750', '17', '57', '1061')
insert into Books values ('1004', 'Great Expectations', '908', '19', '54', '1062')
insert into Books values ('1005', 'Frankenstein', '908', '19', '53', '1015')
insert into Books values ('1006', '1984', '908', '19', '64', '1209')
insert into Books values ('1007', 'To Kill a Mockingbird', '908', '19', '44', '1163')
insert into Books values ('1008', 'The Catcher in the Rye', '908', '19', '32', '3240')
insert into Books values ('1009', 'The Great Gatsb', '908', '19', '16', '1982')




create table Author (AuthorID int primary key, Name varchar(25), Surname varchar(25))
select * from Author
insert into Author values ('51', 'Anshika', 'Chouve')
insert into Author values ('69', 'Ridhika', 'Sing')
insert into Author values ('58', 'Ashish', 'Fernandis')
insert into Author values ('57', 'Banu', 'Richardson')
insert into Author values ('54', 'Scott', 'Fitzgerald')
insert into Author values ('53', 'J D', 'Salinger')
insert into Author values ('64', 'Harper ', 'Lee')
insert into Author values ('44', 'George ', 'Orwell')
insert into Author values ('32', 'Charles', 'Dickens')
insert into Author values ('16', 'Charlotte', 'Brontë')


Create Table Types(TypeID int primary key, Name varchar(25))
select * from Types
insert into Types values ('1051', 'Fiction')
insert into Types values ('1070', 'Classic Novels')
insert into Types values ('1060', 'Poetry')
insert into Types values ('1061', 'Modern Contemporary Works')
insert into Types values ('1062', 'Plays')
insert into Types values ('1015', 'Non-Fiction')
insert into Types values ('1209', 'Modern Fantasy')
insert into Types values ('1163', 'Science Fiction')
insert into Types values ('3240', 'Horror')
insert into Types values ('1982', 'Adventure')

select * from Students

Alter table borrows
ADD CONSTRAINT FK_bowworws_students
foreign key (StudentID)
REFERENCES Students(StudentID) 

alter table books
ADD CONSTRAINT FK_Books_Borrows
FOREIGN KEY (BookID)
REFERENCES  Books(Bookid)

alter table Books
ADD CONSTRAINT FK_authors_books
FOREIGN KEY (authorid)
REFERENCES author(authorid)

alter table books
ADD CONSTRAINT fk_TYPES_BOOKS
FOREIGN KEY (typeid)
REFERENCES types(typeid)

select * from Students

select name, surnamr, class
from Students

select * 
from Students
where Gender='Female'

select * from Students

select name
from Students

select * 
from Students
where Gender='female' and Class='10th'

select name, surnamr, class
from Students
where Class='10th'

select isnull(name, '')+ ' '+ isnull(surnamr, '') as fullname
from Students

select name
from Students
where name like'A%'

select * from Books

select name, pagecount
from Books
where Pagecount between  50 and 200

select name, pagecount
from Books
where Pagecount > 50 and Pagecount < 200

select name
from Students
where name in('Emma', 'Sophia', 'Robert')

select name
from Students
where Name like 'A%'
or name like 'D%'
or name like 'L%'

select name, surnamr, class, gender
from Students
where Gender='male' and Class='9th'
or Gender='female' and Class='9th'

select Gender from Students
where Gender='male' and Class='10th'


select name 
from Students
where Birthdate like ('1989%')

select * from Students
select * 
from Students
where StudentID between 30 and 50

select name, surnamr
from Students
order by name asc

select *
from Students
where Class='10th'
order by studentid desc

select top 10*
from Students

select * from Books

select bookid, name
from Books
where Pagecount=(select MAX(Pagecount) from books)

select top 1 bookid, name
from Books
order by Pagecount desc
select * from Books


select top 1 name, surnamr, Birthdate
from Students
order by Birthdate desc

select top 1 name, surnamr, Birthdate
from Students
order by Birthdate asc

select * from Books
select name
from Books
where SUBSTRING(name, 2, 1)='n'

select * from Students

select Class, count(*) as classcount
from Students
group by Class
order by class desc

select name, Class
from Students
order by Class

select name, surnamr, studentid, class
from Students	
where class='10th'

select * from Author
alter table autor
 alter column ('Smith', 'Allen')


insert into Students values (11,'Thomas', 'Nelson', '1982-12-30', 'male', '10th', 80.00)
insert into Students values (12,'Sally', 'Allen', '1982-12-30', 'female', '9th', 80.00)
insert into Students values (13,'Linda', 'Sandra', '1982-12-30', 'female', '11th', 80.00)

select * from Students

select *
from Students
where Birthdate is null

