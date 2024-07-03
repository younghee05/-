select * from student_tb;

select
	rank() over(partition by class order by score desc) as `rank`,
    student_name, class, score
from 
	student_tb
where
	class = 1
group by
	student_name;
	
    
    
    
    
	-- (select 
-- 		student_name,
--         class,
--         score
-- 	from
-- 		student_tb
-- 	group by
-- 		student_name,
--         class,
--         score) as student_rank

