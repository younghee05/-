# 데이터 조회(DML - SELECT)

select * from student_tb;
select `student_id`, `student_name`, `phone`, `email`, `introduce`, `admission_date` from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from student_tb;
select student_id, student_name from student_tb;
select student_name, student_id from student_tb;
# s_name으로 바꿔주는 것
select student_id, student_name as s_name from student_tb;
# 테이블을 옆으로 증가시키는 것
select 1 as number, "김영희" as name, 20 as age
# 합쳐서 출력됨
# union(all) 병합 조건 - 컬럼의 개수와 자료형이 동일한 select 결과만 병합 가능 
# union -> 중복 제거 후 select 결과 병합
# union all -> 중복 제거 없이 select 결과 병합
union
select 2 as number, "김일희" as name, 22 as age
union 
select 2 as number, "김일희" as name, 22 as age
union
select 3 as number, "김이희" as name, 23 as age;

select student_id, student_name from student_tb
union all
select student_id, phone from student_tb;

select
	number,
    name
from
	(select 1 as number, "김영희" as name, 20 as age
	union 
	select 2 as number, "김일희" as name, 22 as age
	union
	select 3 as number, "김이희" as name, 23 as age) as temp_tb;
    
    
    
    
    
