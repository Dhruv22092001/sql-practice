-- SQL Having Clause

-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40;

select occupation, avg(salary)
from employee_salary
group by occupation
having avg(salary) > 45000;