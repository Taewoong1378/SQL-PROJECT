-- where 절
-- d005부서 매니저의 사원의 사원번호, 부서번호를 가져온다.
select emp_no, dept_no from dept_manager where dept_no='d005';

-- d003 부서의 매니저가 아닌 매니저들의 사원번호, 부서 번호를 가져온다.
select emp_no, dept_no from dept_manager where dept_no <>'d003';

-- 급여가 150000 이상인 사원들의 사원 번호, 급여를 가져온다.
select emp_no, salary from salaries where salary >= 150000;

-- 급여가 40000 이하인 사원들의 사원 번호, 급여를 가져온다.
select emp_no, salary from salaries where salary <= 40000;

-- 1986년 이후에 입사한 사원들의 정보(사원번호, 입사일, 성과 이름)를 가져온다.
select emp_no, hire_date, first_name, last_name from employees where hire_date >= '1986-01-01';

-- 1990년 이후부터 매니저로 근무하고 있는 사원들의 사원번호, 부서번호, 매니저 시작 날짜를 가져온다.
select emp_no, dept_no, from_date from dept_manager where from_date >= '1990-01-01';

-- 1990년 이전에 입사한 사원들의 사원번호, 입사일을 가져온다.
select emp_no, hire_date from employees where hire_date <= '1990-01-01';