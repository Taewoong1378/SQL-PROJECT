use employees;
SELECT emp_no, first_name
FROM employees
WHERE first_name LIKE '%o%'
AND NOT first_name LIKE '%o';

select round(166.555, 0), round(166.555, 1), round(166.555, -1);
select truncate(166.555, 0), truncate(166.555, 1), truncate(166.555, -1);

select insert('aaaaa',2,2,'bbb');
select INSTR('abcdefg','cde');

select lower(concat(first_name, ' ', last_name))
from employees;

select from_date, max(salary)
from salaries
group by from_date
order by from_date;

select emp_no, salary
from salaries
where salary > (select avg(salary) from salaries)
and from_date = '9999-01-01';