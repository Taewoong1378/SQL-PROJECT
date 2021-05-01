use test_db;
desc test_table1;

select * from test_table1;

insert into test_table1 (data1, data2, data3) values (100, '문자열1', 11.11);
select * from test_table1;

insert into test_table1 (data2, data3, data1) values ('문자열2', 22.22, 200);
select * from test_table1;


-- 컬럼명 생략
insert into test_table1 values (300, '문자열3', 33.33);
select * from test_table1;


-- 오류 사항
insert into test_table1 (data1, data2) values (400, '문자열4', 44.44); -- 오류발생
insert into test_table1 (data1, data2, data3) values ('문자열5', '문자열6', '문자열7');
insert into test_table1 (data1, data2, data3) values ('500', '문자열8', '55.55');
-- 3번째껀 오류없이 잘 작동한다. 문자열로 넣었지만 안에 값인 숫자이기 때문에 오류 발생 x
select * from test_table1;


-- 서브 쿼리를 이용해 데이터 저장하기
create table test_table2
as
select * from test_table1 where 1=0;

desc test_table2;
select * from test_table2;

insert into test_table2
select data1, data2, data3 from test_table1;

select * from test_table2;

-- 데이터를 지정해주지 않았을 경우 null이 들어간다.
insert into test_table1 (data1, data2) values (600, '문자열9');
select * from test_table1;


-- 데이터 수정하기
select * from test_table1;
update test_table1 set data2='새로운문자열', data3=66.66;
select * from test_table1;

select * from test_table1;
update test_table2 set data2='새로운문자열', data3=66.66
where data1=100;
select * from test_table2;

-- 테이블 로우값 전체 삭제
delete from test_table1;
select * from test_table1;

-- 데이터가 100인 로우를 삭제
delete from test_table2 where data1=100;
select * from test_table2;