-- SQL window functions

select gender, avg(salary) as avg_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender;

-- Over 
-- The OVER clause in SQL is used with window functions to define a window or a set of rows related to the current row. 
-- It allows you to perform calculations across a set of table rows that are somehow related to the current row without collapsing the result into a single value like aggregate functions do.
select gender, avg(salary) over()
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- Partition by
-- PARTITION BY is a clause used within the OVER clause in window functions. 
-- It divides the result set into partitions (groups of rows) based on the values of one or more columns. 
-- The window function is then applied independently to each partition.
select gender, avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select dem.first_name,dem.last_name,gender,salary,
sum(salary) over(partition by gender order by dem.employee_id) as rolling_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- Row number, Rank, Dense Rank
-- Row number: Assigns a unique, sequential number to each row within a partition, starting at 1. If there are ties in the ordering column, each tied row still gets a different number.
-- Rank: Assigns a rank to each row within a partition based on the ordering column. Tied rows receive the same rank, but the next rank is skipped accordingly.
-- Dense Rank: Similar to RANK(), but does not skip rank numbers after ties.
select dem.first_name,dem.last_name,gender,salary,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;





