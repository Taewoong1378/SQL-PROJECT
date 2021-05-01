USE employees;

-- like
-- 이름이 Tommaso 사원의 사원번호, 이름을 가져온다.
select emp_no, first_name
from employees
where first_name = 'Tommaso';

-- 이름의 첫 글자가 A로 시작하는 사원의 사원번호, 이름을 가져온다.
select emp_no, first_name
from employees
where first_name like 'A%';

-- 이름의 마지막 글자가 s로 끝나는 사원의 사원번호, 이름을 가져온다.
select emp_no, first_name
from employees
where first_name like '%s';

-- 이름의 두 번째 글자가 i인 사원의 사원번호, 이름을 가져온다.
select emp_no, first_name
from employees
where first_name like '_i%';

-- 이름에 o가 포함되어 있는 사원의 사원번호, 이름을 가져온다.
select emp_no, first_name
from employees
where first_name like '%o%';

-- 이름에 o가 포함되어 있는 사원의 사원번호, 이름을 가져온다.
-- 단, 마지막 글자가 o가 아닌 사원만 가져온다.
select emp_no, first_name
from employees
where first_name like '%o%' and not first_name like '%o';

-- 이름이 5글자인 사원들의 사원번호, 이름을 가져온다.
select emp_no, first_name
from employees
where first_name like '_____';