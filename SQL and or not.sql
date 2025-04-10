-- SQL 'AND', 'OR', 'NOT' --

select * from country;

select * from country
where Name = 'Belgium' and Code = 'BEL';

select * from country
where Name = 'Belgium' or Code = 'CHN';

select * from country
where not Name = 'China';

select * from parks_and_recreation.employee_demographics;

select * from parks_and_recreation.employee_demographics
where gender = 'Male' AND (first_name = 'Jerry' or first_name = 'Tom');