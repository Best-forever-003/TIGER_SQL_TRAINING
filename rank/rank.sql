--RANK

SELECT first_name, salary, RANK() OVER (ORDER BY salary) FROM employees;

--desc ORDER

SELECT first_name, salary,department_id, RANK() OVER (PARTITION by department_id ORDER BY salary desc) as 'Ranksal' FROM employees;

--dense_rank

SELECT first_name, salary, dense_rank() OVER (ORDER BY salary) FROM employees;

--report making

SELECT first_name,phone_number, j.job_id,j.job_title, min(salary)