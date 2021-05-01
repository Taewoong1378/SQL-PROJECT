USE employees;

-- concat
select concat('aaa', 'bbb', 'ccc');

-- insert
-- SQL의 인덱스는 1부터 시작한다
-- 따라서 2번째 인덱스부터 두 글자를 bbb로 바꿔라라는 문장이다
select insert('aaaaa', 2, 2, 'bbb');

-- 어떤 글자를 제거하지 않고 사이에 넣고자 할 때 아래와 같은 방법을 사용한다.
select insert('aaaaa', 2, 0, 'bbb');

-- replace
-- aabbcc에서 bb 부분을 ff로 바꾸겠다.
select replace('aabbcc', 'bb', 'ff');

-- INSTR
-- abcdefg에서 cde의 인덱스 위치값을 반환해준다.
select instr('abcdefg', 'cde');

select instr('abcdefg', 'kkk');	-- 없을떄는 0이 반환된다.


-- LEFT : 문자열의 좌측부터 개수만큼 가져온다
-- RIGHT : 문자열의 우측부터 개수만큼 가져온다
-- MID
-- SUBSTRING
select left('abcdefg', 3);
select right('abcdefg', 3);
select mid('abcdefg', 3, 3);
select substring('abcdefg', 3, 3);

-- LTRIM : 좌측 공백 제거
-- RTRIM : 우측 공백 제거
-- TRIM : 공백 제거
select concat('[', '                abc                      ', ']');
select concat('[', ltrim('                abc                      '), ']');
select concat('[', rtrim('                abc                      '), ']');
select concat('[', trim('                abc                      '), ']');


-- LCASE
select lcase('abCDef');
select lower('abCDef');

select ucase('abCDef');
select upper('abCDef');

select reverse('abcdef');


-- 사원의 이름을 가져온다. 성과 이름을 하나의 문자열로 가져온다.
select concat(first_name, ' ', last_name)
from employees;

-- 사원의 이름을 가져온다. 성과 이름을 하나의 문자열로 가져오되 전부 소문자로 변경한다.
select lower(concat(first_name, ' ', last_name))
from employees;
