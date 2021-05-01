-- 날짜 함수
USE employees;

-- 현재 날짜와 시간을 반환
select now();
select sysdate();
select current_timestamp();

-- 현재 날짜를 반환
select curdate();
select current_date();

-- 현재 시간
select curtime();
select current_time();

-- 날짜에서 기준값 만큼 더하고 빼기
-- 현재 날짜에서 100일을 더해서 출력
select now(), date_add(now(), interval 100 day);

-- 현재 날짜에서 100일을 빼서 출력
select now(), date_sub(now(), interval 100 day);

-- 전체 사원들의 입사일로부터 100일 후가 언제일지 출력하여라
select hire_date, date_add(hire_date, interval 100 day)
from employees;

-- 전체 사원들의 입사일로부터 100일 전이 언제일지 출력하여라
select hire_date, date_sub(hire_date, interval 100 day)
from employees;

-- 날짜
select now(), year(now());
select now(), month(now());
select now(), monthname(now());
select now(), dayname(now());
select now(), dayofweek(now()); -- 일월화수목금토 순으로 진행된다.
select now(), weekday(now()); -- 애는 월화수목금토일 순으로 진행된다.
select now(), dayofyear(now()); -- 2021년 1월 1일 기준으로 오늘이 며칠째 되는 날이냐
select now(), week(now()); -- 올해 첫 번째 주부터 오늘이 몇 번째 주인지
select from_days(1000); -- 00년 00월 00일로부터 1000일 뒤가 언제냐
select to_days(now()); -- 00년 00월 00일로부터 오늘까지가 몇 일이냐


-- 포멧
select now(), date_format(now(), '%Y년 %m월 %d일 %H시 %i분 %S초');