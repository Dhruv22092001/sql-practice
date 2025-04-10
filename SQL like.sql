-- SQL Like statement (%) (_) --

select * from country;

select * from country
where Name Like 'A%';

select * from country
where Name Like 'A%a';

select * from country 
where Name Like 'I___a';

select * from country
where Name Like '%i_a';
