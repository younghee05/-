select * from dvd_register_tb;

-- insert into rental_tb

select
	*
from
	rental_tb rt
    left outer join (
					select
						distinct # 중복된 값을 없애게 해줌 
						0 as rental_id,
						floor(rand() * 3000) + 1 as dvd_id, #rand : 랜덤(random) 함수
						"김익명" as customer_name,
						now() as rental_date
					from
						dvd_tb
					where
						dvd_id < 1001
					order by
						dvd_id) rt2 on(rt2.dvd_id)	
    
    
    
    
    
    
    
    
    
    
    