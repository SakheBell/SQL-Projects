create database WitsStudents;
use WitsStudents;
ALTER TABLE witsstudents.studentrecords
MODIFY COLUMN Gender VARCHAR(10),
MODIFY COLUMN CourseRegistered VARCHAR(100),
MODIFY COLUMN School VARCHAR(100),
MODIFY COLUMN LastName VARCHAR(50),
MODIFY COLUMN FirstName VARCHAR(50),
MODIFY COLUMN Faculty VARCHAR(50);
desc witsstudents.studentrecords;
ALTER TABLE witsstudents.studentrecords
modify column DateOfBirth date;

select * from witsstudents.studentrecords;

select StudentID, FirstName, LastName, DateOfBirth from witsstudents.studentrecords where DateOfBirth > '2005-01-01';

select * from witsstudents.studentrecords where YearOfStudy = 2 order by LastName;

select * from witsstudents.studentrecords where CourseRegistered = 'BSc Data Science' and YearOfStudy = 1;

select * from witsstudents.studentrecords where YearOfStudy = 3 or YearOfStudy = 4;

select * from witsstudents.studentrecords where LastName like 'M%';

select *, timestampdiff(year, DateOfBirth, curdate()) as Age from witsstudents.studentrecords;

select CourseRegistered, count(*) AS `Total Number Of Students` from  witsstudents.studentrecords group by CourseRegistered;

select CourseRegistered, count(*) AS `Total Number Of Students` from  witsstudents.studentrecords group by CourseRegistered having count(*) > 5;

select YearOfStudy, count(*) AS `Total Number Of Students` from  witsstudents.studentrecords group by YearOfStudy order by count(*) desc;

create table Students(
StudentID int primary key,
FirstName varchar(50),
LastName varchar(50),
YearOfStudy int
);

create table Registrations(
RegistrationID varchar(10) primary key,
StudentID int,
CourseRegistered varchar(50),
Faculty varchar(50)
);
ALTER TABLE Registrations
MODIFY COLUMN RegistrationID VARCHAR(10);
insert into Students values(2026001,'Nokwanda','Mashaba',1),(2026002,'Lerato','Mokoena', 2),(2026003,'Tsakani','Baloyi',1),
(2026004,'Rendani','Netshidzivhani',2),(2026005, 'Aphiwe', 'Mgangatho',3);

insert into Registrations values('R001',2026001, 'BSc Data Science', 'Science'),('R002',2026002, 'BSc Computer Science','Science'),
('R003',2026003,'BSc Data Science','Science'), ('R004',2026006,'BSc Mathematics', 'Science'),('R005',2026007, 'BSc Statistics', 'Science');

UPDATE Registrations SET Faculty = 'Science' WHERE StudentID = 2026003;
select * from Registrations;

select * from Students;

select Students.StudentID, Students.FirstName, Students.LastName, Registrations.CourseRegistered
from Students
inner join Registrations ON Students.StudentID=Registrations.StudentID;

select * from Students inner join Registrations ON Students.StudentID=Registrations.StudentID order by Students.LastName;

select * from Students
left join Registrations ON Students.StudentID = Registrations.StudentID;

select * from Students
left join Registrations ON Students.StudentID = Registrations.StudentID;

select * from Students
left join Registrations ON Students.StudentID = Registrations.StudentID where RegistrationID is NULL;

select * from Students
right join Registrations ON Students.StudentID = Registrations.StudentID;

select * from Students
right join Registrations ON Students.StudentID = Registrations.StudentID where CourseRegistered = 'BSc Data Science';

select * from Students
left join Registrations ON Students.StudentID = Registrations.StudentID
union
select * from Students
right join Registrations ON Students.StudentID = Registrations.StudentID;

select * from Students
left join Registrations ON Students.StudentID = Registrations.StudentID where RegistrationID is NULL
union
select * from Students
right join Registrations ON Students.StudentID = Registrations.StudentID where Students.StudentID is NULL;

select Registrations.CourseRegistered, count(*) AS `Number of registered students `
from Students
inner join Registrations ON Students.StudentID = Registrations.StudentID group by Registrations.CourseRegistered;

select Registrations.CourseRegistered, count(*) AS `Number of registered students ` 
from Students
inner join Registrations ON Students.StudentID = Registrations.StudentID group by Registrations.CourseRegistered having count(*) > 1;