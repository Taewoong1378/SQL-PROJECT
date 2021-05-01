-- 절대값
select abs(100), abs(-100);

-- 소수점 이하 올림
select ceil(10.1), ceil(10.4), ceil(10.5), ceil(10.8);

-- 소수점 이하 버림
select floor(10.1), floor(10.4), floor(10.5), floor(10.8);

-- 반올림
select round(10.1), round(10.4), round(10.5), round(10.8);
select round(166.555, 0), round(166.555, 1), round(166.555, -1);

-- 버림
select truncate(166.555, 0), truncate(166.555, 1), truncate(166.555, -1);

-- x의 y승
select pow(10, 2);

-- 나머지 구하기
select mod(10, 3);

-- 최대 숫자 구하기
select greatest(10, 4, 20, 1);

-- 최소 숫자 구하기
select least(10, 4, 20, 1);

-- 사원들의 사원번호와 급여를 가져온다. 급여는 10% 인상된 급여를 가져오며 
-- 소수점 이하는 올린값, 버린값, 반올림 값을 모두 가져온다.
USE employees;
select emp_no, salary * 1.1, ceil(salary * 1.1), floor(salary * 1.1), round(salary * 1.1, 0)
from salaries;
