CREATE DEFINER=`admin`@`%` PROCEDURE `usp_mod_score`(
	in pi_name varchar(45),
    in pi_kor double,
    in pi_eng double,
    in pi_math double,
    out po_total double
)
BEGIN
	declare err int default 0;
    declare v_name_id int;
    
    declare continue handler for sqlexception set err = 1; # 중간에 오류가 있으면 그냥 실행해라 라는 뜻
  
    select
		name_id into v_name_id
	from
		join1_tb
	where
		name = pi_name;
        
	start transaction;
    
    update score_tb
	set
		kor = pi_kor,
		eng = pi_eng,
		math = pi_math
	where
		name_id = v_name_id;
        
	if err > 0 then
		rollback;
	else
		commit;
    end if;
    
    select
		kor + eng + math into po_total
	from 
		score_tb
	where
		name_id = v_name_id;
    
    
    
    
    

END