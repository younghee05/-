# where - 조건 
# 행과 열에 대해 써야 하므로 if 대신 where를 씀 

# 단순 비교 연산 
select
	*
from
	student_tb
where
	student_name = "김영희";
    
# OR 연산
select
	student_id,
    student_name
from
	student_tb
where
	student_name = "김일희"
	or student_name = "김이희";

# in 연산(or 조건을 이런 형태로도 바꿀 수도 있다)
select
	*
from
	student_tb
where
	student_name in ("김영희", "김일희", "김익명");

# AND 연산
select
	*
from
	student_tb
where
	student_id > 2
	and sutdent_id < 4;

# BETWEEN A AND B (and 조건을 이런형태로 바꿀수도 있다) -> ~ 부터 ~ 까지 (~ 이상을 의미)
select
	*
from
	student_tb
where
	student_id between 2 and 4;

# NOT : 변수 앞에다 not을 붙이는 형식 (!= : 안씀)
select
	*
from
	student_tb
where
	not student_name = "김영희";

# null 값을 체크할려면 "is"를 붙인다 
# is null 긍정
# is not null 부정 / not을 쓰면 아무 값도 안나오는게 정상
select
	*
from
	student_tb
where
	introduce is null;
#	introduce is not null;

insert into student_tb
values
	(0, "김영희", "010-1223-4556", "aaa@gmail.com", null, now()),
	(0, "김익명", "010-1274-5558", "bbb@naver.com", null, now()),
	(0, "이다빈", "010-1225-5557", "ccc@gmail.com", null, now()),
	(0, "김진주", "010-1216-6623", "dddcc@naver.com", null, now()),
	(0, "이민주", "010-1217-6645", "eeebb@kakao.com", null, now()),
	(0, "박민서", "010-1248-6667", "fffaa@kakao.com", null, now());

# 와일드 카드(like)
# %: ~부터 시작하는 것들을 가지고와라 
select
	*
from
	student_tb
where
	student_name like "이%"; 
    
select
	*
from 
	student_tb
where
	email like "%gmail.com";
    
# 가운데 숫자에 따라 불러오게 만듦
select
	*
from
	student_tb
where
	phone like "%1216%"
    and not phone like "%1216";
    
select
	*
from
	student_tb
where
	email like "%___bb%"; # '_' : _갯수에 따라 글자가 _갯수에 따라 아무것나 와도 된다
    
-- select
-- 	*
-- from
-- 	student_tb
-- where
-- 	phone like "%__37%"; 
	


	




    


    
    
    
    
    
    
    
    