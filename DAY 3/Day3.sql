--CONCAT JOINS TWO STRINGS 

--first_name and last_name as full name from employees

SELECT first_name,last_name, first_name || last_name from employees;

--SPACING

SELECT first_name,last_name, first_name ||' '||last_name FROM employees;

--FORMAT STEVEN WORKS IN DEPT 9

SELECT first_name, first_name ||' WORKS IN DEPARTMENT 9' || department_id FROM employees WHERE first_name='Steven';

--replace

SELECT replace('Black', 'Bl', 'J');

--EXERCISE

select * from titanic;

SELECT substr('HeroVired',1,4);

SELECT SUBSTR('SUNDAY', 1 ,3);

SELECT * FROM titanic;

SELECT first_name || '  was in class  '|| class from titanic where first_name = 'Steven'; 


SELECT first_name||'embarked from '|| embark_town from titanic where first_name ='Steven';

select substr('Tiger Analytics',1,5);

--Passenger_id , first name upper case and last name lower CASE. Only alive Passengers

SELECT Passenger_No, upper(first_name), lower(last_name) from titanic where alive ='yes';

