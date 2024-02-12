/* DDL CREATE COMMAND*/
create database student;
/* TO SELECT A DATABASE*/
use student;
/*CREATE A TABLE*/
create table stud( 
stud_id int not null auto_increment,
stud_name varchar(15),
stud_city varchar(15),
stud_marks tinyint,
stud_email varchar(15),
primary key(stud_id));
/*RENAME THE TABLE NAME*/
/*rename and rename to are same. They both will give same result*/
alter table stud rename stud_ent;
/*DELETE A TABLE*/
drop table stud_ent;
/*DELETE A DATABASE*/
drop database student;
select * from stud_ent;
truncate table stud_ent;
alter table stud_ent add stud_contact double;
select * from stud_ent;
/*DML Insert,Update and Delete queries*/
use student;
select * from student.stud;
alter table stud_ent rename column stud_email to stud_mail;
select * from student.stud_ent;
truncate table student.stud;
select * from student.stud;
/*insert the new records into the table*/
select * from student;
insert into student.stud(stud_name,stud_city,stud_marks,stud_email) values('Shivam','Delhi',84,'s@gmail.com');
select * from student.stud;
insert into student.stud(stud_name,stud_city,stud_marks,stud_email) values('Arpit','Kota',99,'a@gmail.com');
select * from student.stud;
insert into student.stud(stud_name,stud_city,stud_marks,stud_email) values('Bhushan','Sonipat',90,'b@gmail.com'),('Prabhjot','Pune',95,'p@gmail.com');
select * from student.stud;
update student.stud set stud_name=' Shiva' where stud_id='1';
select * from student.stud;
update student.stud set stud_name='Arpita', stud_marks=100 where stud_id='2';
select * from student.stud;
delete from student.stud where stud_id='5' and '6';
select * from student.stud;
alter table student.stud add stud_dob date;
select * from student.stud;
update student.stud set stud_dob='2000-02-02' where stud_id='1';
select * from student.stud;
update student.stud set stud_dob='2001-02-11' where stud_id='2';
update student.stud set stud_dob='2002-02-02' where stud_id='3';
update student.stud set stud_dob='2004-02-02' where stud_id='4';
select * from student.stud;
select month(stud_dob) from student.stud;
select year(stud_dob) from student.stud;
select day(stud_dob) from student.stud;
select * from student.stud where stud_marks<95;
select * from student.stud where stud_marks>95;
select * from student.stud where stud_marks=95;
select max(stud_marks) from student.stud;
select min(stud_marks) from student.stud;
select avg(stud_marks) from student.stud;
select sum(stud_marks) from student.stud;
select stud_name,sum(stud_marks) from student.stud group by stud_name;
select stud_name,avg(stud_marks) from student.stud group by stud_name;
select 10 div 3;
select count(stud_name) from student.stud;
select * from student.stud;
alter table student.stud add stud_doj date;
select * from student.stud;
update student.stud set stud_doj='2020-02-02' where stud_id='1';
update student.stud set stud_doj='2021-03-02' where stud_id='2';
update student.stud set stud_doj='2022-04-02' where stud_id='3';
update student.stud set stud_doj='2027-05-02' where stud_id='4';
select * from student.stud;
select datediff(stud_dob,stud_doj) from student.stud;
select year(stud_dob)-year(stud_doj) from student.stud;