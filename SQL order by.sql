-- SQL Order by --

select * from country;

-- Default asc --
select * from country
order by LifeExpectancy DESC;

select * from parks_and_recreation.employee_salary
order by salary asc, first_name desc;