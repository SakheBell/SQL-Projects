-- create database `COMS5023A`;
use `COMS5023A`;

create table students(
student_num CHAR(3),
student_lname VARCHAR(25),
student_fname VARCHAR(25),
enrollment_date DATE,
age INTEGER
);
desc students;

insert into students values("101", "Mokoena","Thabo",'2019-05-23', 18), ("102", "Shilubana","Ndivhuwo",'2018-08-13', 20),
("103", "Baloyi","Tsakani",'2017-11-09', 19),("104", "Mgangatho","Lukhanyo",'2020-03-17', 17),("105", "Mofokeng","Lerato",'2018-12-05', 21),
("106", "Mnguni","Nomsa",'2018-08-13', 18);
select * from students;

insert into students (student_num,age)
values ("054",7);
select * from students;

insert into students (student_num,student_lname,enrollment_date)
values ("076","Vukosi",'2021-09-09');
select * from students;

select student_num, age from students;

 update students set student_fname = 'Mark' where student_num = '104';

update students set age = 22 where enrollment_date < '2019-01-01';

delete from students where age = '18';

truncate students;


