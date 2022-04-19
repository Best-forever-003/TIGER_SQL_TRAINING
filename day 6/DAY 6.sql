select * from employees;

SELECT * from departments;

--cross JOIN

SELECT * from employees cross join departments;

--INNER JOIN

SELECT first_name,department_name from employees join departments on employees.department_id = departments.department_id;

--table alias 

SELECT first_name, e1.department_id, department_name from employees e1 join departments d on e1.department_id = d. department_id;

--first_name,department_id,department_name for all employees working in dept 8 or 4

select first_name, employees.department_id, department_name 
from employees join departments
on employees.department_id=departments.department_id
and employees.department_id in (4,8);

--first_name,department_id,department_name,salary,hire_date of all employees whose name starts with 'N'

select first_name,e.department_id,salary,hire_date,department_name from employees e join departments d on e.department_id=d.department_id where first_name like 'N%';

--first_name,department_name of all employees whose salary is greater than 15000

select e.first_name,d.dept_name from employees as e join department as d on e.dept_id=d.dept_id where e.sal>15000;

--first and last_name, department_name, city, state_province for each employee_id, employees,departments and locations

--department_id is common here

SELECT first_name, last_name, department_name, city, state_province from employees join departments on employees.department_id = departments.department_id join locations on departments.location_id = locations.location_id;

--write query to execute avg salary in that dept. Return dept name, avg salary and number of employees. Use group by with joins

SELECT department_name, avg(salary), count(employee_id) from employees join departments on employees.department_id = departments.department_id GROUP by department_name;

--salary of employees for each job title. Use table employees,jobs 

select avg(salary) as avg,job_title 
from employees e join jobs j
on e.job_id=j.job_id
GROUP by job_title;


SELECT* from employees;

--all employees first_name along manager name 

SELECT e1.employee_id, e1.first_name as 'Employee', m.employee_id as 'manager_id', m.first_name as 'Manager' from employees e1 join employees m on e1.manager_id = m.employee_id;

--Left outer join 

CREATE table emp(emp_id INTEGER, dept_id INTEGER, name text, salary integer);

insert into emp values(1, 101, 'PARKAVI', 40000), (2, NULL, 'vicky', 20000);

select * from employees;

create table dept(deptid integer,dname text,locationname text);

insert into dept values(101,'Research','Seattle');

select * from dept;

--employees NAMES ALONG DNAME WHO ARE ASSIGNED departments AND ALSO WHO HAVE BEEN ASSIGNED departments 

SELECT NAME, salary, emp.dept_id,dname from emp join dept on emp.dept_id  = dept.deptid; 

SELECT * from emp;

drop table emp;

drop table dept;

SELECT NAME, salary, emp.dept_id,dname from emp left join dept on emp.dept_id  = dept.deptid; 

--CONSTRAINT

--not null, ensurea column does not have null values 

create table company(
id integer not null,
name text not null);

insert into company values(1,null);

drop table company;
create table company(id integer not null,
name text,
salary real default 50000.00);

insert into company (id,name) values(1,'PARKAVI');
select * from company;

--UNIQUE key CONSTRAINT

drop table company;
create  table company (id integer,
name text not null,
age int unique );

insert into company values(1,'PARKAVI',25),(2,'vicky',25);

drop table company;

create table company(int integer not null,
name text not null,
salary integer CHECK(SALARY >0));

INSERT INTO COMPANY VALUES(1,'PARKAVI',0);

--primary KEY

DROP TABLE authors

create table authors(authorid integer primary key ,
name text);


insert into authors values(1,'jane austin'),(2,'Leo Tolstoy');

select * from authors;

--FOREIGN KEY

CREATE TABLE BOOKS (BOOKID INTEGER PRIMARY KEY,
	AUTHORID INTEGER  REFERENCES AUTHORS(AUTHORID),
Bookname text);

select * from authors;
insert into books values(1,1,'Emma');
select * from books;

--DEFAULT CONSTRAINT

drop table student; 

create table student(roll_no integer,
name text,
marks integer default 50);