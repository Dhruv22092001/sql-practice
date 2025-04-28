-- SQL String functions

-- CONCAT

select first_name, last_name,
CONCAT (first_name,' ',last_name) as full_name
from employee_demographics;

-- Locate

select locate('o', 'Ronaldo');

select first_name, locate('n', first_name)
from employee_demographics;

-- Replace

select first_name, replace(first_name,'a', 'z')
from employee_demographics;

-- Left, Right, Substring

select first_name,
Left(first_name, 4),
right(first_name, 2),
substring(first_name, 3, 2),
birth_date,
substring(birth_date,6,2)
from employee_demographics;

-- Trim
select trim('           sky         ');

select ltrim('           sky         ');

select rtrim('           sky         ') as trim;

-- Upper

select upper('sky');

select first_name, upper(first_name)
from employee_demographics;

-- Lower

select lower('SKY');

select first_name, lower(first_name)
from employee_demographics;

-- Length
select length('skyfall');

select first_name, length(first_name) as len
from employee_demographics
order by first_name;


