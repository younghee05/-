select * from join2_tb;
select * from master_tb;

# rollback을 하게되면  start transaction 다시 해야한다
start transaction; # { 

set @name = "홍길동";
set @phone = "010-6666-8888";

savepoint sp_insert_name;
insert into join1_tb
values(0, @name);

savepoint sp_insert_phone;                                                                                                                                                                         
insert into join2_tb
values(0, @phone);

rollback to sp_insert_phone; # phone값만  되돌려 놓기

rollback; # 저장한 키값을 되돌려 놓는 기능

set @new_join1_id = 0; # 초기화 / 이값을 쓸 것을 표기함 
set @new_join2_id = 0;

select
	join1_id into @new_join1_id
from
	join1_tb
order by
	join1_id desc
limit 0, 1;

select @new_join1_id;

select
	join2_id into @new_join2_id
from
	join2_tb
order by
	join2_id desc
limit 0, 1;

insert into master_tb
values(0, @new_join1_id, @new_join2_id);

commit;

call usp_add_master("김영희", "010-9999-9999");

set @total = 0;
set @err = 0;
call usp_mod_score("김영희", 90, "a", 80, @total, @err);

select @total, @err;

set @number = 10;

call usp_square(@number);

select @number;

select
	max(name_id)
from
	master_tb;
select
	add_number(10, 20);


























