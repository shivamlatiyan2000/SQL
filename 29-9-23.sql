create table stu(
stud_id int,
stud_age tinyint,
stud_contact double,
stud_dept varchar(10),
primary key (stud_id)
);
select * from student.stu;
alter table student.stu modify stud_id int auto_increment;
select * from student.stu;
insert into student.stu (stud_age,stud_contact,stud_dept) values (22,2222222222,'CS'),(23,2323232323,'IT'),(24,2424242424,'EC');
select * from student.stu;
insert into student.stu (stud_id,stud_age,stud_contact,stud_dept) values (4,25,2525252525,'MECH'),(5,26,2626262626,'CIVIL'),(6,27,2727272727,'CS');
select * from student.stu;
select stud.stud_id,stud.stud_name,stud.stud_city,stu.stud_age,stu.stud_dept from stud 
inner join stu on stud.stud_id=stu.stud_id;
select stud.stud_name,stud.stud_city,stu.stud_age,stu.stud_dept from stud 
inner join stu on stud.stud_id=stu.stud_id;
select stud_name,stud_city,stud_age,stud_dept from stud
inner join stu on stud.stud_id=stu.stud_id;
select stud_name,stud_city,stud_age,stud_dept from stud
join stu on stud.stud_id=stu.stud_id;
select stud_name,stud_city,stud_age,stud_contact from stud
left join stu on stud.stud_id=stu.stud_id;
select stud_name,stud_city,stud_age,stud_contact from stu
left join stud on stud.stud_id=stu.stud_id;
select stud_name,stud_city,stud_age,stud_contact from stud
left join stu on stud.stud_id=stu.stud_id order by stud.stud_name;
select stud_name,stud_city,stud_age,stud_contact from stu
left join stud on stud.stud_id=stu.stud_id order by stud.stud_name;
select stud.stud_id,stud_city,stud_age,stud_contact from stud
right join stu on stud.stud_id=stu.stud_id;
select stud.stud_id,stud_city,stud_age,stud_contact from stu
right join stud on stud.stud_id=stu.stud_id;
select * from stud full join stu;
select * from stu full join stud;
select * from stud full join stu on stud.stud_id=stu.stud_id;
select * from stud cross join stu on stud.stud_id=stu.stud_id;