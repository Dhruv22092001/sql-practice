-- SQL Temporary table

create temporary table fav_movies
(
first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)
);

select * from fav_movies;

insert into fav_movies
values ('jack','myles','Rush hour');

create temporary table salary_over_50k
select *
from employee_salary
where salary > 50000;

select * from salary_over_50k;
