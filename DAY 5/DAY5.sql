-- GROUPBY FUNCTIONS

SELECT department_id, SUM (salary) FROM employees GROUP by department_id;

select * from employees;

SELECT department_id, sum(salary) from employees as ' Sum of salary' GROUP by department_id;

--aggregate functions 

--max, min, avg, count, sum

-- MAX SALARY DEPT WISE

SELECT MAX (salary), department_id from employees group by department_id;

--average job salary wise

SELECT avg (salary), job_id FROM employees GROUP by job_id;

--no.of employees, total salary paid to employees who work in each departments

SELECT count(employee_id), sum (salary) as 'total salary', department_id from employees GROUP by department_id;

--avg salary department wise where department_id>3

SELECT department_id, avg (salary) from employees where department_id>3 GROUP by  department_id;

--EMPLOYEES COUNT, JOB WISE WITH JOB ID > 4

SELECT job_id, count(employee_id) from employees where job_id>4 group by job_id;

--HAVING CLAUSE - FILTERS ROWS AFTER GROUPING 

--DISPLAY DEPARTMENT WISE MAXIMUM SALARY > 5000

SELECT department_id, MAX(salary) FROM employees GROUP BY department_id HAVING MAX (salary) > 5000; 

--department WISE COUNT OF employees WHO HAVE MORE THAN 5 employees

SELECT department_id, job_id, count (employee_id) from employees group by department_id,job_id;

--count of employees having count greater than 2

SELECT department_id, count(employee_id) from employees GROUP by department_id HAVING count (employee_id)>2;

--WHICH DAY OF THE WEEK RECORDED THE MAXIMUM HIRING 

SELECT hire_date, strftime('%w', hire_date) FROM employees;

WITH CTEL AS (SELECT strftime( '%w', hire_date) AS DAYS_OF_WEEK FROM employees)

SELECT DAYS_OF_WEEK, COUNT(DAYS_OF_WEEK) AS CNT FROM CTEL GROUP BY DAYS_OF_WEEK ORDER BY CNT DESC; 

--max avg salary using cte

with CTEL AS (SELECT department_id, avg (salary) as avgsal from employees group by department_id)

SELECT round(max(avgsal)) from CTEL;

--IF salary>20000 HIGH 

--SALARY BETWEEN 10000 AND 2000 MEDIUM

--salary LESS THAN 10000 AVERAGE

WITH CTEL AS (

SELECT *,

CASE 

WHEN salary>20000 THEN 'HIGH'

WHEN SALARY BETWEEN 10000 AND 20000 THEN 'MEDIUM'

else 'average'

end as salary_class from employees)

SELECT salary_class,count(salary_class) as cnt from CTEL

group by salary_class 

order by cnt desc;

--cereal

SELECT * FROM cereal;

drop table cereal;

--1.Write A Query display count of cereals mfr wise
select count(mfr) from cereal group by mfr;


--2.Write A Query to display count of cereals type wise
select count(type) from cereal group by type;

--3.Write A Query to display average  of carbo cereals mfr wise
select name,mfr,round(avg(carbo)) from cereal GROUP by mfr; 

--4.Write A Query to display sum of rating  of  cereals mfr wise
select mfr,round(sum(rating)) from cereal group by mfr;

----5.Write A Query to display average of protein  of  cereals mfr wise
select mfr,avg(protein) from cereal group by mfr;

----6. Write A Query to display sum of weight  of  cereals type wise
select type, sum(weight) from cereal group by type;

select type from cereal;


--7.Write A Query to display max(potass),max(vitamins),max(rating)  of  cereals type wise
select max(potass),max(vitamins), max(vitamins), max(rating) from cereal group by type;

--8. Display cereal name having highest sugar.
select name from cereal order by sugars desc limit 1;

--AustraliaWeather

SELECT * FROM AustraliaWeather;



--YEAR WISE MAXIMUM HIRES 

WITH CTEL AS

(SELECT strftime('%Y', hire_date) as yearly from employees)

SELECT yearly, count(yearly) as CNT from ctel 

group by yearly

order by cnt desc;

--DISPLAY MAX salary

WITH CTEL AS (SELECT first_name, salary FROM employees)

SELECT MAX(salary) FROM CTEL;

