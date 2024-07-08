# 트랜잭션(Transaction)

set @name = "김영희";
select @name;

select @@autocommit;
set @@autocommit = 0;

insert into master_tb
values
	(0, 6, 2);

commit; # 껐다 켜도 데이터 값을 저장해주는 기능 : ctrl + s 도 마찬가지