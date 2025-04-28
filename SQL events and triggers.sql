-- SQL Triggers and Events

select * from employee_demographics;

select * from employee_salary;

-- Trigger

Delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$
Delimiter ;


insert into employee_salary (employee_id,first_name,last_name,occupation,salary,dept_id) 
values (13,'Jon','Doe','Athlete',500000,null);

-- Events
Delimiter $$
create event delete_employee
on schedule every 30 second
do
begin
	Delete
    from employee_demographics
    where age > 50;
end $$
Delimiter ;