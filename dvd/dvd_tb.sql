# from -> where -> group by -> select -> having -> order by -> limit 

select * from dvd_tb;

select
	dt.dvd_id,
    dt.registration_number,
    dt.title,
    dt.producer_id,
    pdt.producer_name,
    dt.publisher_id,
    pbt.publisher_name,
    dt.publication_year,
    dt.database_date
from
	dvd_tb dt
    left outer join producer_tb pdt on(pdt.producer_id = dt.producer_id)
    left outer join publisher_tb pbt on(pbt.publisher_id = dt.publisher_id)
limit 10, 10; # 갯 수 예) (id)10부터 10개를 출력해라 


-- insert into dvd_register_tb
-- values
-- 	(0, 1, now()),
-- 	(0, 1, now()),
-- 	(0, 1, now()),
-- 	(0, 1, now());

# union 을 써서 똑같은 값 3개 출력
-- select
-- 	0,
--     dvd_id,
--     now()
-- from
-- 	dvd_tb
-- union all
-- 	select
-- 		0,
-- 		dvd_id,
-- 		now()
-- 	from
-- 		dvd_tb
-- 	select
-- 		0,
-- 		dvd_id,
-- 		now()
-- 	from
-- 		dvd_tb
-- 	select
-- 		0,
-- 		dvd_id,
-- 		now()
-- 	from
-- 		dvd_tb
-- 	order by
-- 		dvd_id

# join 을 써서 똑같은 값 3개 출력
insert into dvd_register_tb
select
	0,
    dvd_id,
    now()
from
	dvd_tb dt1
	left outer join dvd_tb dt2 on(dt2.dvd_id < 4); 
    
select
	title,
    producer_id,
    publisher_id,
    count(*) as dvd_count
from
	dvd_tb
group by
	title,
    producer_id,
    publisher_id
having
	dvd_count > 1;