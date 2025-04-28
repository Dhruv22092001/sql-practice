-- SQL stored procedures

-- example 1
create procedure high_salaried_person()
select * from employee_salary
where salary > 50000;

call high_salaried_person;

-- exapmle 2

Delimiter $$
create procedure procedure_3(employee_id_param int)
begin
	select * from employee_salary
	where employee_id = employee_id_param;
end $$
Delimiter ;

call procedure_3(1);

call procedure_1;



