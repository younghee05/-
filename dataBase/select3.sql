# group by - 그룹
# 집계할때 씀 -> count, max, min, sum, avg : 대표적으로 많이 사용함 
# count는 null의 수를 세지 않는다. 그러므로 *을 찍으면 모든 행의 값이 나온다
select * from student_tb;
select 
	admission_data,
	count(*)
from
	student_tb
group by
	admission_data;
