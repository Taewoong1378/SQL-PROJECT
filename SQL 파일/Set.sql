USE employees;
select emp_no from titles where title='Senior Staff';
select emp_no from titles where title='Staff';

-- 합집합
-- union (중복된건 한번만 가지고 온다)
select emp_no from titles where title='Senior Staff'
union
select emp_no from titles where title='Staff';

-- union all (중복된 것까지해서 모두 가지고 온다)
select emp_no from titles where title='Senior Staff'
union all
select emp_no from titles where title='Staff';


-- 교집합 (join문 이용)
select a1.emp_no
from titles a1, titles a2
where a1.emp_no = a2.emp_no and a1.title = 'Senior Staff' and
	  a2.title='Staff';


-- 차집합
-- Senior Staff를 뺀 결과를 출력
select emp_no
from titles
where title='Staff' 
and emp_no not in (select emp_no from titles where title='Senior Staff');