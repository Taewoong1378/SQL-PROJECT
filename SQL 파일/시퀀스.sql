use test_db;

-- 시퀀스
create table test_table100(
data1 int auto_increment,
data2 int not null,
data3 int not null,
constraint pk1 primary key(data1)
);

insert into test_table100 (data2, data3) values (100, 200);
insert into test_table100 (data2, data3) values (101, 201);
insert into test_table100 (data2, data3) values (102, 202);
select * from test_table100;



-- limit
use employees;
select * from employees order by emp_no;
select * from employees order by emp_no limit 0, 10;
select * from employees order by emp_no limit 10, 10;