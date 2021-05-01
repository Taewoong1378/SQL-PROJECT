use test_db;
create table test_table1000(
data1 int,
data2 int not null,
constraint pk1 primary key (data1)
);

create table test_table2000(
data1 int not null,
data3 int not null,
constraint fk1 foreign key (data1) references test_table1000(data1)
);

insert into test_table1000(data1, data2) values (1, 10);
insert into test_table1000(data1, data2) values (2, 20);
insert into test_table1000(data1, data2) values (3, 30);

select * from test_table1000;

insert into test_table2000(data1, data3) values (1, 100);
insert into test_table2000(data1, data3) values (2, 200);
insert into test_table2000(data1, data3) values (3, 300);

select * from test_table2000;

select a1.data1, a1.data2, a2.data3
from test_table1000 a1, test_table2000 a2
where a1.data1 = a2.data1;

create view test_view1
as 
select a1.data1, a1.data2, a2.data3
from test_table1000 a1, test_table2000 a2
where a1.data1 = a2.data1;

select * from test_view1;

insert into test_table1000 (data1, data2) values (4, 40);
insert into test_table2000 (data1, data3) values (4, 400);

select * from test_view1;

drop view test_view1;

select * from test_view1;