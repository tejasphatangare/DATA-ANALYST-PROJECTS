create database Global_Wether;
use Global_Wether;


# I HAVE EXPORTED DATA THROUGH CSV FILE & CREATED A TABLE AT THE TIME OF IMPORT.

select * from data;

-- ************************************************************ KPI (Key Performance Indicator) **************************************
 
 -- 1-FIND THE TOTAL DISTINCT  COUNTRY AVAILABLE IN DATA.
 select  count(distinct(country))as 'Total Country' from data;
 
 -- 2-SHOW THE AVG HUMIDITY FROM DATA.
select round(avg(humidity),2)as 'Avg Humidity' from data;

-- 3-SHOW AVG UV INDEX FROM DATA.
select round(avg(uv_index),2)as 'Avg Uv Index' from data;

-- 4- WHAT IS THE AVG TEMP IN CELSIUS.
select round(avg(`feels_like_celsius`),2)as 'Avg Temp In ( c )' from data;

-- 5-WHAT IS THE AVG TEMP IN FAHRENHEIT.
select round(avg(`feels_like_fahrenheit`),2)as 'Avg Temp In ( f )' from data;

-- ********************************************* EDA ( EXPLORATORY DATA ANALYSIS ) ***********************************************
 
-- 1-SHOW THE TOP 3 COUNTRY WITH MAXIMUM AIR QUALITY BY GUST-MPH.
select country,round(max(`gust_mph`),2)as 'Count Of Gust In MPH' from data
group by country
order by `Count Of Gust In MPH` desc
limit 3;

-- 2-SHOW THE BOTTOM 3 COUNTRY WITH MAXIMUM AIR QUALITY BY GUST-MPH.
select country,round(max(`gust_mph`),2)as 'Count Of Gust In MPH' from data
group by country
order by `Count Of Gust In MPH`
limit 3;

-- 3-SHOW THE TOP 3 COUNTRY WITH  MAXIMUM AIR QUYALITY BY OZONE.
select country,max(`air_quality_Ozone`)as 'Count Of Ozone' from data
group by country
order by `Count Of Ozone` desc
limit 3;

-- 4-SHOW THE BOTTOM 3 COUNTRY WITH  MAXIMUM AIR QUYALITY BY OZONE.
select country,round(max(`air_quality_Ozone`),2)as 'Count Of Ozone' from data
group by country
order by `Count Of Ozone` asc
limit 3;



-- 5- SHOW THE TOP 4 COUNTRY WITH MAXIMUM AIR QUALITY BY SULPHAR DIOXIDE.
select country,max(`air_quality_Sulphur_dioxide`)as 'Count Of Sulphar Dioxide' from data
group by country
order by `Count Of Sulphar Dioxide` desc
limit 4;

-- 6- SHOW THE BOTTOM 3 COUNTRY WITH MAXIMUM AIR QUALITY BY SULPHAR DIOXIDE.
select country,max(`air_quality_Sulphur_dioxide`)as 'Count Of Sulphar Dioxide' from data
group by country
order by `Count Of Sulphar Dioxide`
limit 4;

-- 7- SHOW THE TOP 3 COUNTRY WITH MAXIMUM AIR QUALITY BY CARBON MONOOXIDE.
select country,round(max(`air_quality_Carbon_Monoxide`))as 'Count Of Carbon Monooxide' from data
group by country
order by `Count Of Carbon Monooxide`  desc
limit 3;

-- 8- SHOW THE TOP 3 COUNTRY WITH MAXIMUM AIR QUALITY BY CARBON MONOOXIDE.
select country,round(max(`air_quality_Carbon_Monoxide`),1)as 'Count Of Carbon Monooxide' from data
group by country
order by `Count Of Carbon Monooxide` 
limit 3;

-- 9-SHOW THE TOP 3 COUNTRY WITH MAXIMUM AIR QUALITY BY NITROGEN DIOXIDE.
select country,round(max(`air_quality_Nitrogen_dioxide`),0)as 'Count Of Nitrogen Dioxide' from data
group by country
order by `Count Of Nitrogen Dioxide` desc
limit 3;

-- 10-SHOW THE TOP 4 COUNTRY WITH MAXIMUM AIR QUALITY BY NITROGEN DIOXIDE.
select country,round(max(`air_quality_Nitrogen_dioxide`),2)as 'Count Of Nitrogen Dioxide' from data
group by country
order by `Count Of Nitrogen Dioxide`
limit 4;

-- 11-SHOW THE TOP 3 COUNTRY WITH MAXIMUM AIR QUALITY BY PM10.
select country,round(max(`air_quality_PM10`),2)as 'Count Of PM10' from data
group by country
order by `Count Of PM10` desc
limit 3;

-- 12-SHOW THE BOTTOM 3 COUNTRY WITH MAXIMUM AIR QUALITY BY PM10.
select country,round(max(`air_quality_PM10`),2)as 'Count Of PM10' from data
group by country
order by `Count Of PM10` ASC
limit 3;

-- 13-SHOW THE TOP 3 COUNTRY WITH MAXIMUM AIR QUALITY BY PM10.
select country,round(max(`air_quality_PM2.5`),2)as 'Count Of PM2.5' from data
group by country
order by `Count Of PM2.5` desc
limit 3;

-- 14-SHOW THE BOTTOM 3 COUNTRY WITH MAXIMUM AIR QUALITY BY PM10.
select country,round(max(`air_quality_PM2.5`),2)as 'Count Of PM2.5' from data
group by country
order by `Count Of PM2.5` ASC
limit 3;