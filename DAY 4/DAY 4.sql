-- DATE FUNCTION

--DISPLAY START OF MONTH

SELECT date ('2017-10-15', 'start of month');

-- DISPLAY START OF YEAR

SELECT DATE ('2017-12-05','START OF YEAR');

--DISPLAY NEXT MONTH

SELECT DATE('2017-12-17','+1 month');

--strftime is used to get month,date and year. This is the second fucntion

--year

SELECT hire_date,strftime('%Y',hire_date) from employees;

--sqlite.org refer this site

--month

SELECT hire_date,strftime('%m',hire_date) from employees;

--day

SELECT hire_date, strftime('%d', hire_date) from employees;

--STEVEN WAS HIRED ON 17 DATE OF YEAR 1987

SELECT first_name ||' WAS HIRED ON'|| strftime('%d', hire_date) || 'HIRE OF YEAR' || strftime('%Y', hire_date) from employees;

-- CASE STATEMENT

--salary >20000 - High

-- salary between 10000 and 20000 - Medium

-- salary < 10000 -- low 

SELECT first_name, salary, CASE WHEN salary > 20000 THEN 'HIGH'

WHEN salary BETWEEN 10000 AND 20000 THEN 'MEDIUM'

ELSE 'LOW' END FROM employees;

--EXERCISE 2:- titanic 

SELECT Passenger_No, first_name, embark_town, fare, CASE WHEN FARE > 50000 THEN 'HIGH FARE'

WHEN FARE BETWEEN 10000 AND 30000 THEN 'AVERAGE FARE'

ELSE 'LOW FARE' END FROM titanic;

--NULLIF 

SELECT NULLIF(2,3);

SELECT nullif(2,2);

--CREATE TABLE

--COLNAME pizzaid INTEGER

--pizzaname TEXT

--PRICE INTEGER

CREATE TABLE pizza2(

pizzaid INTEGER,

pizzaname TEXT, 

price INTEGER);

CREATE TABLE SANDWHICH(

SANDWHICH ID INTEGER

SANDWHICH NAME TEXT

SANDWHICH TYPE TEXT

SANDWHICH PRICE INTEGER);

--DML LANGUAGE

INSERT INTO pizza2 values(1,'CHEESE PIZZA',400),(2,'CHICKEN PIZZA',335),(3,'MUSHROOM PIZZA',450); 

SELECT * from pizza2;

UPDATE pizza2

SET PRICE = 150

WHERE pizzaname = 'CHICKEN PIZZA';

--UPDATE FULL TABLE 

UPDATE pizza2

SET PRICE = 600;

SELECT * from pizza2;

--DELETE COMMAND NORMALLY DELETES ALL. USE CONDITION TO SPECIFY (WHERE CLAUSE IS USED)

DELETE FROM pizza2 WHERE pizzaid = 2;

SELECT * from pizza2;

--HOMEWORK

--1. CREATE TABLE STUDENT 

CREATE TABLE STUDENT(

ROLL_NUMBER INTEGER,

NAME TEXT,

MARKS INTEGER);

INSERT INTO STUDENT VALUES(1, 'Anil', 85),(2, 'Mahesh',32),(3,'Sohini', 94);

SELECT * from STUDENT;

select * from STUDENT where name LIKE '%i%';

SELECT ROLL NUMBER, MARKS, NAME, CASE WHEN MARKS>90 THEN 'DISTINCTION' 

WHEN MARKS BETWEEN 70 AND 90 THEN 'FIRST CLASS'

ELSE 'SECOND CLASS' END FROM STUDENT;

