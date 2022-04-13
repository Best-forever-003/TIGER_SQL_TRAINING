--1.Write a query to display all the details of passengers who survived.

SELECT * FROM titanic where survived  = 1;

--2. Write a query to display first_name,last_name,pclass ,age of female Gender
SELECT first_name,last_name,pclass ,age from titanic where sex="female";

--3. Display all the details of Bruce Passenger_No--

select * from titanic where first_name="Bruce";


--4.Display the age,first_name,embark_town,alone of passengers who survived the crash.

select age,first_name,embark_town,alone from titanic where survived=1;

--5.Display deatils of passengers who embarked from Southampton.

select * from titanic where embark_town= "Southampton";

--6.Display all the details of passengers who survived and are in deck B

select *from titanic where survived=1 and deck="B";

--7.Display Passenger_No,first_name,last_name,survived,sex,age,parch 
-- of all passengers who paid above 50000 and survived.
SELECT Passenger_No,first_name,last_name,survived,sex,age,parch from titanic where survived=1 and fare>50000;

--8.Display the deckno of all passengers who did not survive the iceberg hit.

select DECK_NUMBER from titanic where survived=0;

--9.Display all the details of passengers whose age is less than 20 and were  alive

SELECT * from titanic where age<20 and survived =1 ;

--10.Display details of passengers like first_name,deck,embark_town of all senior citizens(age should be greater than 60)

select first_name,deck,embark_town from titanic where age>60;
