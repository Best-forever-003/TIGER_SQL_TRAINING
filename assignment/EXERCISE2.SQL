Use Chinook_Sqlitenew

Use Track table
--Case statement 
--1.Write a query to create a report to classify tracks based on its length such as less than a minute,the track is short,between 1 and 5 minutes the track is medium ,
--greater than 5 minutes the track is long.



SELECT Milliseconds, case when Milliseconds<60000 then 'short'

when Milliseconds between 60000 and 5*60000 then 'medium'

else 'long' end as tracklength from Track;

2. Use invoice table

Write a query to display total, classify total when less than 4 as ‘Low’,total >=4 and total <=13 then medium and greater than 13 is high.

SELECT total,

CASE

WHEN total<4 then 'low'

WHEN total>=4 then 'medium'

else 'high' end as classifytotal from Invoice;

3. Use table :Customer
-- Create a report of customer groups with the logic that if a customer locates in the USA 
--,This customer belongs to domestic group otherwise the customer belongs to the foreign group

SELECT Country, 

CASE

when Country = 'USA' then 'domestic group'

else

'foreign group' end as g from Customer;