USE employees;

-- 논리 연산자
-- d001 부서의 매니저 중에 1990년 이후부터 매니저인 사원의 사원번호, 부서번호, 매니저 시작 날짜를 가져온다.
select emp_no, dept_no, from_date 
from dept_manager 
where dept_no = 'd001' and from_date >= '1990-01-01';

-- 1990년 이후에 입사한 남자 사원의 사원번호, 성별, 입사일을 가져온다.
select emp_no, gender, hire_date 
from employees
where gender = 'M' and hire_date >= '1990-01-01';

-- 1990년 이후부터 60000 이상의 급여를 받는 사원의 사원번호, 급여, 급여 수령 시작 날짜를 가져온다.
select emp_no, salary, from_date
from salaries
where from_date >= '1990-01-01' and salary >= 60000;

-- d001 부서와 d002 부서 매니저의 사원 번호, 부서 번호를 가져온다.
select emp_no, dept_no
from dept_manager
where dept_no ='d001' or dept_no = 'd002';

-- 직함이 Staff인 사원과 Engineer인 사원의 사원번호, 직함을 가져온다.
select emp_no, title
from titles
where title='Staff' or title='Engineer';

-- d003 부서의 매니저가 아닌 매니저의 사원번호, 부서 번호를 가져온다 (2가지 방법)
select emp_no, dept_no
from dept_manager
where dept_no <> 'd003';

select emp_no, dept_no
from dept_manager
where not dept_no = 'd003';


-- between (and 대체)
-- 급여가 60000이상 70000 미만인 사원의 사원번호, 급여를 가져온다.
select emp_no, salary
from salaries
where salary >= 60000 and salary < 70000;

select emp_no, salary
from salaries
where salary between 60000 and 69999;


-- in (or 대체)
-- d001 부서와 d002 부서 매니저의 사원번호, 부서번호를 가져온다. 
select emp_no, dept_no
from dept_manager
where dept_no = 'd001' or dept_no = 'd002';

select emp_no, dept_no
from dept_manager
where dept_no in ('d001','d002');