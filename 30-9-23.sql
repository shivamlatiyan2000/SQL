create table st(
stud_id int,
stud_name varchar(10),
stud_sub varchar(10),
stud_marks int,
primary key(stud_id)
);
select * from student.st;
alter table student.st modify stud_id int auto_increment;
insert into st(stud_name,stud_sub,stud_marks) values('Parvani','Maths',85),('Philips','Computer',86),('Mirza','Maths',90),('Mukesh','English',83),
('Sagar','Hindi',82),('Kajal','Computer',89),('Niklil','English',86);
select * from student.st;
select stud_marks from student.st where stud_marks>75;
select * from student.st where stud_marks>75;
select stud_marks,stud_sub,stud_name,stud_id from student.st where stud_marks>75;
select stud_marks,stud_id,stud_sub from student.st where stud_sub='English';
select * from student.st where stud_sub='English';
create view ss as
select stud_id,stud_name,stud_sub,stud_marks from student.st where stud_sub='English';
select * from student.ss;
insert into ss(stud_name,stud_sub,stud_marks) values('Bhuvesh','English',85);
select * from student.st;
select * from student.ss;
update ss set stud_marks=89 where stud_id=8;
select * from student.ss;
delete from ss where stud_id=4;
select * from student.ss;
drop view student.ss;
select * from student.ss;
update ss set stud_marks=80 where stud_id=8;
select * from student.ss;
update ss set stud_sub='Hindi' where stud_id=8;
select * from student.ss;
insert into ss(stud_name,stud_sub,stud_marks) values ('Prabhjot','Computer',90);
select * from student.ss;
select * from student.st;