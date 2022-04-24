--AGGREGATE FUNCTIONS

--SUM OF salary

SELECT SUM(salary) from employees;

--Grouping 

SELECT SUM(salary),department_id from employees GROUP by department_id;


--window functions

--Group by clause condition can be written in PARTITION

SELECT first_name, department_id, salary,sum(salary) over (PARTITION by department_id) as 'GrandTotal' from employees;

--count(distinct(first_name))

--first_name,hire_date,department_id, avg salary for each dept using WINDOW analytics function

SELECT first_name,hire_date,department_id,avg(salary) over (PARTITION by department_id) as 'average dept' from employees;

--first_name,email,salary,max salary for each job using WINDOW analytics functions

SELECT first_name,email,salary,max(salary) over (PARTITION by job_id) as 'JobMax' from employees;

--ANALYTICAL FUNCTION TO DISPLAY AVERAGE salary EACH YEAR first_name,department_id, salary,year, avgyearly

--use strftime

SELECT first_name, department_id, salary, avg(salary) over (PARTITION by strftime('%Y',hire_date)) as 'avgyearly' from employees; 

