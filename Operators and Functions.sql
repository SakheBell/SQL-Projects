use `COMS5023A`;
select now() as 'current date';

create table Student(
StudentID int primary key,
LastName varchar(50),
FirstName varchar(50),
Fees decimal(15, 2), 
Gender varchar(50), 
Course varchar(50),
DateOfBirth date, 
NSFASPayment decimal(15,2)
);

insert into Student values (1001, 'Mudau', 'Rendani', 45000.00, 'Male', 'Information Technology', '2003-05-12', 18000.00),
    (1002, 'Netshifhefhe','Lufuno', 52000.00, 'Female', 'Accounting','2004-08-21', 22000.00), (1003, 'Mulaudzi', 'Takalani', 61000.00, 'Male', 'Engineering', '2002-11-03', 25000.00),
    (1004, 'Baloyi', 'Nkateko', 38000.00, 'Male', 'Business Management','2005-02-18', 16000.00), (1005, 'Hlungwani', 'Tsakani', 56000.00, 'Female', 'Information Technology','2004-07-27', 21000.00),
    (1006, 'Mavundla', 'Mbhazima', 47000.00, 'Male', 'Education', '2003-09-14', 19500.00), (1007, 'Mashigo', 'Katlego', 34000.00, 'Male', 'Marketing','2006-01-30', 15000.00),(1008, 'Mokgadi', 'Ntswaki', 62500.00, 'Female', 'Engineering', '2002-06-11', 24000.00),
    (1009, 'Mahlangu', 'Thabo', 42000.00, 'Male', 'Accounting', '2005-10-05', 17500.00), (1010, 'Mbatha', 'Babalwa', 55000.00,'Female', 'Human Resources','2004-03-22', 23000.00),(1011, 'Mgangatho', 'Luyanda', 36000.00, 'Male', 'Education','2006-05-16', 15500.00),
    (1012, 'Ndzuzo', 'Asanda', 64000.00, 'Female', 'Information Technology','2002-12-09', 24500.00), (1013, 'Dlamini', 'Sibusiso', 50000.00, 'Male', 'Business Management','2003-04-25', 200.00),
    (1014, 'Khumalo', 'Ayanda', 59000.00, 'Female','Marketing','2005-08-13', 22500.00), (1015, 'Mthembu', 'Sfiso', 43000.00, 'Male','Accounting','2004-11-19', 17000.00);

ALTER TABLE Student
    MODIFY COLUMN Fees DECIMAL(10,2) NOT NULL,
    MODIFY COLUMN NSFASPayment DECIMAL(10,2) NOT NULL;
    
UPDATE Student SET Course = 'Engineering' WHERE StudentID = 1008;
UPDATE Student SET LastName = 'Ndzuzo' WHERE StudentID = 1012;
UPDATE Student SET FirstName = 'Khumalo' WHERE StudentID = 1014;

select * from Student;

select * from Student where Fees between 40000 and 60000;

select StudentID, FirstName, LastName, NSFASPayment from Student where NSFASPayment between 18000 and 22000;

select * from Student where Gender = 'Female' and Course = 'Information Technology';

select * from Student where Course in ('Engineering','Accounting');

select * from Student where LastName like 'M%';

select * from Student where FirstName like '%a';

SELECT StudentID, FirstName, LENGTH(FirstName) AS len
FROM Student
WHERE StudentID = 1014;

UPDATE Student
SET FirstName = 'Ayanda', LastName = 'Khumalo'
WHERE StudentID = 1014;

select * from Student;

select FirstName, LastName, DateOfBirth from Student where year(DateOfBirth) = 2005;