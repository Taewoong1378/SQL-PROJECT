USE employees;

-- 사원의 번호와 급여를 가져온다. 급여를 기준으로 오름차순 정렬한다.
select emp_no, salary 
from salaries
order by salary; -- asc를 써도 되고 안써도됨

-- 사원의 번호와 급여를 가져온다. 급여를 기준으로 내림차순 정렬한다.
select emp_no, salary 
from salaries
order by salary desc;

-- 사원의 번호와 이름을 가져온다. 이름을 기준으로 오름차순 정렬한다.
select emp_no, first_name
from employees
order by first_name;

-- 사원의 번호와 이름을 가져온다. 이름을 기준으로 내림차순 정렬한다.
select emp_no, first_name
from employees
order by first_name desc;

-- 사원의 번호와 입사일을 가져온다. 입사일을 기준으로 오름차순 정렬한다.
select emp_no, hire_date
from employees
order by hire_date;

-- 사원의 번호와 입사일을 가져온다. 입사일을 기준으로 내림차순 정렬한다.
select emp_no, hire_date
from employees
order by hire_date desc;