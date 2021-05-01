use test_db;
create table test_table10(
data1 int not null
);
desc test_table10;
insert into test_table10 (data1) value (1);
insert into test_table10 (data1) value (2);
insert into test_table10 (data1) value (3);

select * from test_table10;

insert into test_table10 (data1) value(1);
select * from test_table10;

insert into test_table10 (data1) value(null); -- 오류 발생

create table test_table20(
data1 int,
data2 int not null,
constraint pk1 primary key(data1)
);

insert into test_table20 (data1, data2) values (10, 100);
insert into test_table20 (data1, data2) values (20, 200);
insert into test_table20 (data1, data2) values (30, 300);
select * from test_table20;

-- 아래 세 문장은 오류가 발생함. 
-- 첫 번째 문장에서 10은 primary key column에 이미 존재하기 때문
-- 두 번째 문장에서 primary key는 null을 허용하지 않기 때문
-- 세 번째 문장에서 primary key는 null을 허용하지 않기 때문
insert into test_table20(data1, data2) values (10, 100);
insert into test_table20(data1, data2) values (null, 100);
insert into test_table20(data2) values (100);

create table test_table30(
data1 int,
data2 int,
constraint pk2 primary key(data1),
constraint fk2 foreign key(data2) references test_table20(data1)
);

select * from test_table20;
insert into test_table30 (data1, data2) values (1, 10);
insert into test_table30 (data1, data2) values (2, 20);
insert into test_table30 (data1, data2) values (3, 30);
select * from test_table30;

insert into test_table30 (data1, data2) values (4, 40); -- 오류 발생 (why?)
insert into test_table30 (data1, data2) values (5, null);
insert into test_table30 (data1) values (6);
select * from test_table30; 



-- unique
create table test_table40(
data1 int,
data2 int not null,
constraint uk1 unique(data1),
constraint uk2 unique(data2)
);

insert into test_table40 (data1, data2) values (1, 10);
insert into test_table40 (data1, data2) values (2, 20);
select * from test_table40;

insert into test_table40 (data1, data2) values (1, 30); -- 오류 발생 (중복)
insert into test_table40 (data1, data2) values (3, 10); -- 오류 발생 (중복)
insert into test_table40 (data1, data2) values (null, 40);
insert into test_table40 (data1, data2) values (null, 50);
select * from test_table40;	-- unique여도 null 값은 중복돼서 들어갈 수 있음

insert into test_table40 (data1, data2) values (10, null); -- 오류 발생 (not null 조건떄매)


-- check (제약 조건)
create table test_table50(
data1 int not null,
data2 int not null,
constraint chk1 check (data1 > 10),
constraint chk2 check (data2 in(10, 20, 30))
);

insert into test_table50 (data1, data2) values (20, 30);
select * from test_table50;

insert into test_table50 (data1, data2) values (1, 100);
select * from test_table50;

create table test_table60(
data1 int not null default 1,
data2 int not null default 10
);

insert into test_table60 (data1, data2) values (100, 200);
select * from test_table60;

insert into test_table60 (data1, data2) values (null, null);
select * from test_table60;

insert into test_table60 (data1) values (1000);
insert into test_table60 (data2) values (2000);
select * from test_table60;