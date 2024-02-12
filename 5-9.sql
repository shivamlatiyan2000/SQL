SELECT * FROM newschema.startup;
/* Find top 10 Indian cities with most amount of fundings received.*/
select CityLocation,sum(AmountInUSD) from newschema.startup group by CityLocation order by count(CityLocation) desc limit 10;
select CityLocation,sum(AmountInUSD) as amount from newschema.startup group by CityLocation order by amount desc limit 10;
/* Find top 10 Indian cities which have most number of startups ?*/
select CityLocation,count(CityLocation) from newschema.startup group by CityLocation order by count(CityLocation) desc limit 10;
select CityLocation,count(CityLocation) from newschema.startup group by CityLocation having count(CityLocation)=300;
/* Find top 5 startup with most amount of funding*/
select * from newschema.startup;
select StartupName,sum(AmountInUSD) from newschema.startup group by StartupName order by count(StartupName) desc limit 5;
select StartupName,sum(AmountInUSD) as amount from newschema.startup group by StartupName order by amount desc limit 5;
/* Find top 5 startup who received the most number of funding round, that means startup which got fundings maximum number of times? */
select StartupName,count(StartupName) from newschema.startup group by StartupName order by count(StartupName) desc limit 5;
select StartupName,count(StartupName) as start from newschema.startup group by StartupName order by start desc limit 5;
/* Find the investor who have invested maximum number of time */
select * from newschema.startup;
select InvestorsName,sum(InvestorsName) from newschema.startup group by InvestorsName order by count(InvestorsName) desc;
select InvestorsName,sum(InvestorsName) as inv from newschema.startup group by InvestorsName order by inv desc;
/* Total number of funding done on each year, how many number of time */
select date from newschema.startup;
select date,sum(date) from newschema.startup group by date order by count(date) desc;
select date,sum(date) as da from newschema.startup group by date order by da desc;
select * from newschema.startup where InvestmentType='private equity' and CityLocation='mumbai';
