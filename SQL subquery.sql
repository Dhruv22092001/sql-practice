-- SQL Subqueries

select * from employee_demographics;

select * from employee_salary;

-- subquery in where
select * 
from employee_demographics
where employee_id in (select employee_id
						from employee_salary
                        where dept_id = 1);
                        
-- subquery in select
select first_name, last_name, salary,
(select avg(salary) from employee_salary) as avg_salary
from employee_salary;

-- subquery in from
select avg(max_age)
from
(select gender, avg(age) as avg_age, max(age) as max_age, min(age) as min_age, count(age) 
from employee_demographics
group by gender) as agg_table;