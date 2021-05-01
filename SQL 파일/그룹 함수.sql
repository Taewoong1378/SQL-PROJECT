USE employees;
-- 사원의 수를 구한다.
select count(*)
from employees;

-- 남자 사원의 수를 구한다.
select count(*)
from employees
where gender='M';

-- 현재 d005 부서에 근무하고 있는 사원들의 수를 구한다.
-- to_date 컬럼이 9999-01-01인 사원들이 현재 근무하고 있는 사원이다.
select count(*) 
from dept_emp
where dept_no='d005' and to_date='9999-01-01';

-- 현재 받고 있는 급여의 총합을 구한다.
select sum(salary)
from salaries
where to_date='9999-01-01';

-- 현재 받고 있는 급여의 평균을 구한다.
select avg(salary)
from salaries
where to_date='9999-01-01';

-- 현재 받고 있는 급여의 최대 급여액을 구한다.
select max(salary)
from salaries
where to_date='9999-01-01';

-- 현재 받고 있는 급여의 최저 급여액을 구한다.
select min(salary)
from salaries
where to_date='9999-01-01';