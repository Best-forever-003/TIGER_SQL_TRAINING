--Use Australiaweather Table

SELECT * from AustraliaWeather;

--1.Write a Query to display average rainfall and average Evaporation for each Location except records with Evaporation as NULL.  (Use Tables: AustraliaWeather). 

with are1 as (select DISTINCT Location,AVG(Rainfall),avg(Evaporation) from AustraliaWeather where Location NOT NULL GROUP BY Location)
select * from are1;

--2.Write a Query to display the Location,year and month wise average rainfall analysis.  (Use Tables: AustraliaWeather). 

--ANSWER:

select Location, strftime('%Y',Date), strftime('%m',Date), avg(Rainfall) 
from australiaweather
group by Location, strftime('%Y',Date),strftime('%m',Date);


--3.Write a Query to display the location wise average pressure and average temperature using the data collected at both the points of time(9am and 3pm). (Use Tables: AustraliaWeather).

 --ANSWER:

SELECT AVG(Pressure3pm),AVG(Pressure9am),AVG(Temp3pm),AVG(Temp9am) from AustraliaWeather group by Location; 

--4.Write a Query to display the maximum temperature recorded in the morning and afternoon for each location in each month.  (Use Tables: AustraliaWeather).
 
 --ANSWER:

select Location, strftime('%m',Date), max(Temp9am), max(Temp3pm) 
from australiaweather
where Temp3pm is not 'NULL'
group by Location, strftime('%m',Date);

--5.	The Meteorogical Department wants an analysis of the morning weather. Write a Query to display the  highest recorded Pressure in each location in every month, when the evaporation record is available and temperature range in the morning should range between 14 and 30 degrees. 

--Filter the records where Maximum Humidity in the morning should not exceed 70. (Make appropriate date conversions if necessary).  (Use Tables: AustraliaWeather). 

--ANSWER:

select location, strftime('%m', Date) as month, max(Pressure9am) from AustraliaWeather
where (evaporation is not NULL) and (Temp9am between 14 and 30)
group by location, month
having max(humidity9am)<70;

--6.Using CTE display which Location has maximum average rainfall

with cte4 as (select Location,strftime('%m',Date) as month,Temp9am,Evaporation,Humidity9am,Pressure9am from AustraliaWeather)
select Location,month,max(Pressure9am) from cte4
where (Evaporation is not null) AND (Temp9am BETWEEN 14 AND 30)
group by Location,month
having Humidity9am <70;