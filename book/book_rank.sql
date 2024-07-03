select * from book_tb;

# 도서 목록에서 출판사별로 category의 count를 집계한다.

select
	*
from
	(select
	#	rank() over(partition by publisher_id order by book_count desc) as `rank`,
	#	dense_rank() over(partition by publisher_id order by book_count desc) as `dense_rank`,
		row_number() over(partition by publisher_id order by book_count desc) as `num`, # row_number는 중복이 안되기 때문에 값이 중복이 나와도 번호로만 매긴다 (1-2-3-4-5..)
		pc_count_tb.*
	from
		(select
			publisher_id,
			category_id,
			count(*) as book_count
		from
			book_tb
		group by
			publisher_id,
			category_id) as pc_count_tb) as book_row_number_tb
where
	num = 1; # num이 1인 애들만 가지고 온다
	