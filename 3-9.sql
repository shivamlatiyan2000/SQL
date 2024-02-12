select * from newschema.year2017;
select * from year2017 where city='bialee';
select * from year2017 where Country='sudan';
select * from year2017 where Killed=6;
select * from year2017 where Target_type='military';
select * from year2017 where Target_type='military' and Country='pakistan';
select * from year2017 where Target_type='military' or Country='pakistan';
select * from year2017 where Killed>40;
select * from year2017 where Killed=75;
select * from year2017 where Killed<30;
select * from year2017 where Country='sudan' or Country='india';
select * from year2017 where not Country='india';
select * from year2017 where Killed between 175 and 550;
select * from year2017 where not Killed between 0 and 50;
select * from year2017 where Country in ('iran','india','sudan');
select * from newschema.year2017;
/*we create index on the table to speed up the process of retrieving the data*/
create index i on newschema.year2017(year);
select * from newschema.year2017;