-- SQL CTE

with cte_sample as 
(
select gender, avg(salary) avg_sal, min(salary) min_sal, max(salary) max_sal, count(salary) count_sal
from employee_demographics
join employee_salary
on employee_demographics.employee_id = employee_salary.employee_id
group by gender
)
select avg(avg_sal)
from cte_sample;

-- multiple cte's
with cte_sample_1 as
(
select employee_id,first_name, last_name, age
from employee_demographics
where age > 40
),
cte_sample_2 as
(
select employee_id,first_name, last_name, salary
from employee_salary
where salary > 30000
)
select * 
from cte_sample_1
join cte_sample_2
on cte_sample_1.employee_id = cte_sample_2.employee_id;

with cte_sample (Gender, Avg_Sal, Min_Sal, Max_Sal, Count_Sal) as 
(
select gender, avg(salary) avg_sal, min(salary) min_sal, max(salary) max_sal, count(salary) count_sal
from employee_demographics
join employee_salary
on employee_demographics.employee_id = employee_salary.employee_id
group by gender
)
select *
from cte_sample;