select
	*
from
	master_tb mt # as 생략
    -- inner join join1_tb on(join1_tb.join1_id = 1) # 아이디 값이 존재하지 않으면 공백으로 출력됨
    # 왼쪽을 기준으로 값들을 붙여 출력 # as 생략
	left outer join join1_tb jt1 on(jt1.join1_id = mt.name_id and jt1.join1_id < 4) 
	-- inner join join1_tb on(join1_tb.join1_id = mt.name_id and join1_tb.join1_id < 4) # left에 비해 값이 제대로 안나옴
    left outer join join2_tb jt2 on(jt2.join2_id = mt.phone_id)
