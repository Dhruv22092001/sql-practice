-- SQL Group By --

select * from employee_demographics;

select gender
from employee_demographics
group by gender;

-- ( The below query is wrong because you need to have the same column in the select
-- statement and the group by clause in order to make the query work, if not any aggregated column)
-- select first_name
-- from employee_demographics
-- group by gender;

-- Aggregate functions
select gender, avg(age), max(age), min(age), count(age), sum(age)
from employee_demographics
group by gender;