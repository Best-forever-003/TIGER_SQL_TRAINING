--HR DATABASE

--DISPLAY ALL EMPLOYEES OF ID = 3

SELECT * FROM employees WHERE department_id=3;

--DISPLAY NEENA DETAILS 

SELECT * FROM employees WHERE first_name='Neena';

--BETWEEN A RANGE

SELECT * FROM employees WHERE SALARY BETWEEN 10000 AND 20000;

-- SALARY BETWEEN 5000 TO 10000 DEPT ID = 6

SELECT * FROM employees WHERE SALARY BETWEEN 5000 AND 10000 AND department_id=6;


-- DATE DATA 1989 - 09 - 21

SELECT * FROM employees WHERE hire_date = '1989-09-21';

--OPERATORS

--employees IN department_id

--MANAGER ID IS NULL

SELECT * FROM employees WHERE manager_id IS NULL;

-- EMPLOYEES WITH SECOND LETTER O

SELECT * FROM employees WHERE first_name LIKE '_o%';

--dept id = 4 and dept id = 5

SELECT * FROM employees WHERE department_id IN (4,5);

-- JOB ID 5,17, 8

SELECT * FROM employees WHERE job_id IN (5,17,8);

--DEPT ID NOT 10

SELECT * FROM employees WHERE department_id NOT IN (10);

-- SORTING FIRST name

SELECT first_name FROM employees ORDER BY first_name;

--titanic DATA 

SELECT * FROM TITANIC;

--DATA IN DESCENDING ORDER 

SELECT SALARY FROM employees ORDER BY salary DESC;

--DISTINCT CLAUSE FETCHES DISTINCT VALUE FROM COLUMNS 

SELECT DISTINCT(SALARY) FROM employees;

--upper

SELECT first_name,upper (first_name) from employees;

--lower

SELECT first_name, lower(first_name) FROM employees;

-- FIRST THREE LETTER FROM FIRST name

SELECT first_name, substr(first_name, 1, 3) FROM EMPLOYEES;  

--EMPLOYEES FIRST NAME STARTS WITH A

SELECT * FROM employees WHERE first_name like 'a%';

--FIRST NAME, LAST NAME AND SALARY OF employees ENDING WITH E 

SELECT first_name,last_name,salary FROM employees WHERE first_name LIKE '%e';

--first_name WITH POSITION NUMBER OF E

SELECT first_name, instr(first_name, 'e') FROM employees;

--TRIM FUNCTION REMOBES BLANK SPACES

SELECT TRIM ("CHENNAI     ")|| "KOLKATA";

--FIRST NAME AND LAST NAME COMBINED TO GIVE FULL NAME 

SELECT first_name, last_name, first_name||last_name FROM employees; --CONCAT

 