# 데이터 수정(DML - UPDATE) 

select * from student_tb;

select
	student_tb
from
	student_id
where
	student_name = "김익명";

update 
	student_tb
set
	email = "bbb@gmail.com"
where
	student_id in (	select # 이 값이 포함이 되어 있냐 
						temp_student_tb.student_id
					from
						(select * from student_tb) as temp_student_tb
					where
						temp_student_tb.student_name = "김익명");

update 
	student_tb
set
	phone = "010-1216-5448",
    email = "aaa@naver.com"
where
	student_id = 32;
    
