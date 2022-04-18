--1.Display all rows and columns from table starbucks

SELECT * FROM starbucks;

--2.Display all rows with Name column and Calories  

SELECT Name,Calories from starbucks;

--3.Display all rows with Name,Calories,Fat,Carb  having calories greater than 300

SELECT Name,Calories,Fat,Carb FROM starbucks WHERE Calories > 300;

--4.Display all rows with Name,Calories,Fat,Carb  having calories greater than or equal to  310

SELECT Name,Calories,Fat,Carb FROM starbucks WHERE Calories >= 310;

--5.Write a query to display Name,Calories,Protein having Protien less than or equal to 5.

SELECT Name,Calories,Protein FROM starbucks WHERE Protein <= 5;

--6.Write a query to display Name, Total Calories (calories+fat+carb+protein) from starbucks table. 

SELECT NAME, Calories+Fat+Carb+Protein as total_calories from starbucks;

--7.An ideal diet should contain optimum level of nutrients, can you find out the names of the items on menu that contain: (Use table starbucks)

SELECT * FROM starbucks;

--#Upto 450 calories
 --	#Upto 40 g protein
 --            #Upto 10 g fat
 --	#Upto 40 g Carbs
 --	#Upto 5 g fibre 

SELECT name from starbucks where Calories<=450 and Fat>=10 and carb>=40 and Fiber>=5;

--8.Give the names of items on menu that satisfy the above criteria but contain least carbs but maximum protein (Use table starbucks and nested sorting)
select Name from starbucks where Calories <=450 
and Fat<=10 
and Protein <=40
and Carb<=40
and Fiber <=5
order by Carb asc, Protein desc;