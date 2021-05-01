-- 서브쿼리
-- 현재 받는 급여의 평균보다 많이 받는 사원들의 사원번호, 급여액을 가져온다.
USE employees;
select emp_no, salary
from salaries
where salary > (select avg(salary) from salaries where to_date='9999-01-01')
	and to_date='9999-01-01';
    
-- d001 부서에 근무하고 있는 사원들의 사원번호와 first_name을 가져온다.
-- Join문으로 해결하는 방법
select a.emp_no, a.first_name
from employees a, dept_emp b
where a.emp_no = b.emp_no and b.dept_no = 'd001';

-- 서브쿼리로 해결하는 방법
select emp_no, first_name
from employees
where emp_no in(select emp_no from dept_emp where dept_no='d001');


-- 1960년 이후에 태어난 사원들이 근무하고 있는 사원들의 사원번호, 근무 부서 번호를 가져온다.
-- Join문으로 해결하는 방법
select a.emp_no, a.dept_no
from dept_emp a, employees b
where a.emp_no = b.emp_no and birth_date >= '1960-01-01';

-- 서브쿼리로 해결하는 방법
select emp_no, dept_no
from dept_emp
where emp_no in (select emp_no from employees where birth_date >= '1960-01-01');