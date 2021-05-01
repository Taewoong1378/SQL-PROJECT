use test_db;
show tables;

-- 테이블 이름 변경
rename table test_table1 to test_table3;
show tables;

-- 컬럼의 속성 변경
desc test_table3;
alter table test_table3 modify data1 int(100);
desc test_table3;

-- 컬럼의 이름과 속성 변경
desc test_table3;
alter table test_table3 change data1 data10 int(200);
desc test_table3;

-- 칼럼 추가
alter table test_table3 add data4 int(20);
desc test_table3;

-- 칼럼 삭제
alter table test_table3 drop data4;
desc test_table3;


-- 테이블 삭제
show tables;
drop table test_table3;
show tables;