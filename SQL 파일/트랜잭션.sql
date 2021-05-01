use test_db;
select * from test_table2;
delete from test_table2;
select * from test_table2;

rollback;
select * from test_table2;

delete from test_table2;
select * from test_table2;
rollback;
select * from test_table2;

-- commit
delete from test_table2;
commit;
select * from test_table2;
rollback;
select * from test_table2;


-- Savepoint
insert into test_table2 (data1, data2, data3) values (100, '문자열1', 11.11);
insert into test_table2 (data1, data2, data3) values (200, '문자열2', 22.22);
insert into test_table2 (data1, data2, data3) values (300, '문자열3', 33.33);
commit;
select * from test_table2;
rollback;

update test_table2 set data2 = '새로운 문자열', data3 = 44.44 where data1=100;
savepoint aa;
delete from test_table2 where data1= 100;
select * from test_table2;
rollback to aa;
select * from test_table2;
commit;

-- truncate
select * from test_table2;
delete from test_table2;
select * from test_table2;
rollback;
select * from test_table2;

truncate test_table2;
rollback;
select * from test_table2;