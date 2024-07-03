select * from book_tb;

-- Group by : 집계, 중복제거 

select
	distinct # 중복을 제거해라 라는 뜻 "distinct"는 두개이상으로 쓸수 없다 
    category_id,
    publisher_id
from
	book_tb;
    
select
	category_id,
    count(*)
from 
	book_tb
where
	book_id > 7000
group by
	category_id;
    
# 도서명 중 '돈'이라는 글자가 들어간 데이터들을 찾아 카테고리별로 묶으시오. 
-- 그리고 카테고리 별로 도서 개수가 출력되어야 한다.

select
	*
from
	(select
		category_id,
		count(*) as category_count # count 명 # 4 카운트는 그룹화가 진행된 후 실행된다
	from # 1
		book_tb
	where # 2
		book_name like "%돈%"
	group by # 3  
		category_id) as category_group_book_tb
where
	category_count > 10;

# 위에 것을 짧막하게 둔것
select
	category_id,
	count(*) as category_count # count 명 # 4 카운트는 그룹화가 진행된 후 실행된다
from # 1
	book_tb
where # 2
	book_name like "%돈%"
group by # 3  
	category_id
having # select 다음 실행
	category_count > 10;


    

	