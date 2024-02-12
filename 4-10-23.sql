set autocommit=0;
use student;
create table stude(
sid int,
sname varchar(10),
primary key (sid)
);
insert into student.stude values(101,'abc');
insert into student.stude values(102,'def');
insert into student.stude values(103,'ghi');
select * from student.stude;
commit;
delete from student.stude where sid=103;
select * from student.stude;
rollback;
select * from student.stude;
