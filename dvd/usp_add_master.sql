# pi -> input parameter input
CREATE PROCEDURE `usp_add_marster` (
	in pi_name varchar(45),
    in pi_phone varchar(45) 
    
)
BEGIN
	declare v_int_new_join1_id int;
	declare v_int_new_join2_id int;
    

	start transaction;
    
	insert into	 join1_tb
    values(0, pi_name);
    
    insert into join2_tb
    values(0, pi_phone);
    
    select
		join1_id into v_int_new_join1_id
	from
		join1_tb
	order by
		join1_id desc
	limit 0, 1;
    
	select
		join2_id into v_int_new_join2_id
	from
		join2_tb
	order by
		join2_id desc
	limit 0, 1;
    
    insert into master_tb
    values(0, v_int_new_join1_id, v_int_new_join2_id);
    
    commit;
    
    select
		*
	from
		master_tb mt
        left outer join join1_tb jt1 on(jt1.join1_id = mt.name_id)
        left outer join join2_tb jt2 on(jt2.join2_id = mt.phone_id)
	order by
		master_id desc
	limit 0, 1;
	
END
