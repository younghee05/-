select * from student_tb;

# 이메일 데이터 중 @앞에 bbb가 포함된 정보의 introduce 테이터를 
# 'bbb를 포함하고 있는 계정입니다.'라고 수정하고 student_id가 35 ~ 37인 데이터들을 삭제하시오.

update
	student_tb
set
	introduce = "bb를 포함하고 있는 계정입니다."
where
	email like "%bb%@%"; # @앞에 bbb를 나타냄 

delete
from
	student_tb
where
	student_id between 35 and 37;
	-- student_id > 34 
	-- and student_id < 38;

