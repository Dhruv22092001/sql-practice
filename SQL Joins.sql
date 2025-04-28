-- SQL Joins

select * from employee_salary;

select * from parks_departments;

select * from employee_demographics;

-- Inner Join

select * 
from employee_demographics as dem
inner join employee_salary sal
	on dem.employee_id = sal.employee_id;
    
-- Outer Join

select * 
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select * 
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- Self Join

select emp1.employee_id as employee_id_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id,
emp2.first_name,
emp2.last_name
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id + 1 = emp2.employee_id;

-- Joining Multiple tables together

select * 
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id
inner join parks_departments as par
on sal.dept_id = par.department_id;