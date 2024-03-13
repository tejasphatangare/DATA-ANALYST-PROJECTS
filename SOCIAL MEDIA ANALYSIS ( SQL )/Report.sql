create database Social_Media;
use Social_Media;

-- IMPORT THE DATA FROM CSV FILE. 
select * from data;


-- *************************************************General Descriptive Analysis (GDA)**************************************************

-- 1)	Count The total Data Is Available for Analysis in Dataset.
select count(interests) as 'Total_Data' from data;

-- 2)	Count The Total Different Platform Available In Dataset. 
 select count(distinct(platform))as 'Total Platform'  from data;
 
 -- 3)	Count The total Different Genders Available In Dataset.
 select count(distinct(gender)) as 'Total Genders' from data;
 
 -- 4)	Count Average User Age In Dataset.
 select round(avg(age),1) as 'Avg Age' from data;
 
 -- 5)	Count Average Time Spent on Social Media.
 select round(avg(time_spent),2) as 'Avg Time Spent' from data;
 
 -- 6)  Count The Number of Profession Available in Dataset.
 select count(distinct(profession)) as 'Total Profession' from data;
 
 
 -- *************************************************Exploratory Descriptive Analysis Question (EDA)****************************************
-- 1)	Find The Total Count for Each Gender.
select distinct(gender) as 'Gender', count(gender)as 'Total Count' from data
group by gender
order by `Total Count` desc;

-- 2)Show The Average Time Spent In Hours On Platform By Gender.
select distinct(platform)as 'Platforms',gender,round(avg(time_spent),1)as 'Avg Time Spent' from data
group by `Platforms`,`gender`;

-- 3)Average Time Spent on Platform Available in Dataset.
select platform,round(avg(time_spent),1)as 'Avg Time On Platform' from data
group by platform
order by `Avg Time On Platform` desc;

-- 4)Find Total Average Hours’ Time Spent on Platform by Profession.
select platform,profession,round(avg(time_spent),1) as 'Avg Time Spent' from data
group by platform,profession;

-- 5) Find Total Average Time Spent on Platform by Interests.
select platform,interests,round(avg(time_spent),1)as 'Avg Time In Hours' from data
group by platform,interests;

-- 6) Find Total Average Time Spent on Platform by Car Ownership.
select platform,Owns_Car,round(avg(time_spent),1)as 'Avg Time In Hours' from data
group by platform,Owns_Car;

-- 7) Find Total Average Time Spent on Platform by Home ownership.
select platform,isHomeOwner,round(avg(time_spent),1)as 'Avg Time In Hours' from data
group by platform,isHomeOwner;

-- 8) Find Total Average Time Spent on Platform by Demographics Area.
select demographics,platform,round(avg(time_spent),1)as 'Avg Time In Hours' from data
group by platform,demographics;

-- 9) Find Total Average Time Spent on Platform by Location.
select location,platform,round(avg(time_spent),1)as 'Avg Time In Hours' from data
group by platform,location;

-- 10) Find total Average Time Spent on Platform by Indebt.
select indebt,platform,round(avg(time_spent),1)as 'Avg Time In Hours' from data
group by platform,indebt;
