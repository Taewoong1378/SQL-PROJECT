-- 데이터베이스 생성
create database test_db
-- 한글을 저장하는 법 (아래 2줄)
character set = 'utf8'
collate = 'utf8_general_ci';

use test_db;

-- 테이블 생성
create table test_table1(
data1 int(10),
data2 varchar(10),
data3 float(10, 2)
);

desc test_table1;

select * from test_table1;


-- 서브쿼리를 이용한 테이블 생성하기
use employees;

select * from departments;
create table dept1
as
select * from departments;

desc dept1;
select * from dept1;

-- 위와 다르게 구조만 복제하는법 (데이터는 가져오지 않는다)
create table dept2
as
select * from departments where 1=0; 
-- where 1=0이라는 항상 거짓이 되는 명제를 이용해 모든 로우를 가져오지 않는다.
desc dept2;
select * from dept2;

-- 일부만 가져와서 테이블 만들기
create table dept3
as
select dept_no from departments;
select * from dept3;