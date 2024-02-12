SELECT * FROM newschema.year2017;
select Country from newschema.year2017 where Country='india';
/*How many countries are present in my table*/
select count(Country) from newschema.year2017;
/*How many different countries are present in the table*/
select count(distinct(country)) from newschema.year2017;
/*How many attacks happened on 1 st january 2017*/
select count(*) from newschema.year2017 where month=2 and year=2017;/*800*/
select count(killed) from newschema.year2017 where month=1 and year=2017 and Day=10;/*31*/
/*   killed=*  */
select count(*) from newschema.year2017 where month=1 and year=2017 and Day=10;/*31*/
/*How many attacks have happened on 10 january 2017 and also in which country*/
select count(distinct(country)) from newschema.year2017 where Month=1 and Year=2017 and Day=10;/*14*/
select sum(killed) from newschema.year2017 where Day=1 and Month=1 and Year=2017;/*82*/
select country,count(*) from newschema.year2017 where Day=1 and Month=1 and Year=2017 group by Country;
select country,count(killed) from newschema.year2017 where Day=1 and Month=1 and Year=2017 group by Country;
select month,count(*) from newschema.year2017 where Day=1 group by Month;
select month,count(*) from newschema.year2017 group by Month;
select month,sum(killed) from newschema.year2017 group by Month;
select day,sum(killed) from newschema.year2017 group by Day;
select count(*) from newschema.year2017 where month=1 and year=2017 and Day=10;
select sum(Killed) from newschema.year2017 where month=1 and year=2017 and Day=10;
select Country,sum(Killed) from newschema.year2017 where month=1 and year=2017 and Day=10 group by country;
select * from newschema.year2017 order by Country;
select * from newschema.year2017 order by killed;
select * from newschema.year2017 order by city;
select * from newschema.year2017 order by Country desc;/*Z-A jyate hai eisme*/
select * from newschema.year2017 order by Day;
select * from newschema.year2017 order by Day desc;
select * from newschema.year2017 order by Country,Day,Month,city;
select * from newschema.year2017;
select * from newschema.year2017 limit 10;
select * from newschema.year2017 limit 20;
select city,killed from newschema.year2017 where Country='india' order by city limit 10;
select city,killed from newschema.year2017 where Country='sudan' order by city limit 10;
select Country,killed from newschema.year2017 where Country='india' order by city limit 10;
select city,killed from newschema.year2017 where Country='india' order by city desc limit 10;
/*In country India get me the city wise data of killing*/
select city,sum(killed) from newschema.year2017 where country='india' group by city;
select Country,sum(killed) from newschema.year2017 where country='india' group by Country;
select Country,sum(killed) from newschema.year2017 group by Country;
select City,sum(killed) from newschema.year2017 group by City;
/*Total number of casualities where firearm is used as weapon*/
select sum(casualities) from newschema.year2017 where Weapon_type='firearms';
select sum(killed) from newschema.year2017 where Weapon_type='firearms';
select count(Country) from newschema.year2017 where Weapon_type='firearms';
/*Month wise highest killing*/
select month,sum(killed) as killed_data from newschema.year2017 group by Month order by killed_data;
select month,sum(killed) as killed_data from newschema.year2017 where Country='india'group by Month order by killed_data;
select month,sum(killed) as killed_data from newschema.year2017 group by Month order by killed_data;
select month,sum(killed) as killed_data from newschema.year2017 group by Month order by killed_data desc;
select month,sum(killed) as killed_data from newschema.year2017 group by Month order by killed_data desc limit 5;
select * from newschema.year2017 where Country like '%A';/* % lagana bohat jaruri hai*/
select * from newschema.year2017 where Country like 'A%';
select * from newschema.year2017 where Country like '_N%';
select * from newschema.year2017 where Country like 'I_D_A';
select sum(killed) from newschema.year2017 where Country='india'and Month=1;
select sum(killed) from newschema.year2017 where Country='india'and Month=10;
select month,sum(killed) from newschema.year2017 where Country='india' group by Month;
select day,sum(killed) from newschema.year2017 where Country='india' group by Day;
select month,sum(killed) from newschema.year2017 group by Month;
select day,sum(killed) from newschema.year2017 group by Day;
select country, count(country) as count from newschema.year2017 group by Country order by count desc;
select country, count(country) as count from newschema.year2017 group by Country order by count desc limit 10;
select min(killed) from newschema.year2017;
select max(killed) from newschema.year2017;
select Country,min(killed) from newschema.year2017 group by Country;
select Country,max(killed) from newschema.year2017 group by Country;
/*In iraq countary, top 5 cities with highest terrorism*/
select city,sum(killed) from newschema.year2017 where Country='iraq' group by city order by count(city) desc limit 5;
select city,sum(city) from newschema.year2017 where Country='iraq' group by city order by count(city) desc limit 5;
select city,sum(killed) as max from newschema.year2017 where Country='iraq' group by city order by max desc limit 5;
/* 70 and 72 will give the same result but 72 is much easy to understand*/
select city,sum(killed) as min from newschema.year2017 where Country='iraq' group by city order by min asc limit 5;