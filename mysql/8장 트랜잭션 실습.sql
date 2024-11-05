# 날짜 : 24/01/18
# 이름 : 김선광
# 내용 : 8장 트랜잭션과 병행제어

# 실습 8-1
-- 트랜잭션 시작
select * from bank_account;


-- 트랜잭션 시작
update bank_account set a_balance = a_balance-10000 where a_no = '101-11-1001';
update bank_account set a_balance = a_balance+10000 where a_no = '101-11-1212';

-- 트랜잭션 롤백
update bank_account set a_balance = a_balance-10000 where a_no = '101-11-1001';
update bank_account set a_balance = a_balance+10000 where a_no = '101-11-1212';

select * from bank_account;
rollback;                     # 오토 커밋이라 안돌아감 돌아가게 하려면 set autocommit=0; 으로 오토커밋을 꺼야한다.
select * from bank_account;

# 실습 8-3 커밋 OFF
select @@autocommit;  # 모든 연산이 트랜잭션 처리가 되고 있다는 뜻
set autocommit = 0;
update bank_account set a_balance = a_balance-10000 where a_no = '101-11-1001';

rollback;                     # 오토 커밋이라 안돌아감 돌아가게 하려면 set autocommit=0; 으로 오토커밋을 꺼야한다.

select * from bank_account;

# 실습 8-4 
select * from bank_account where a_no = '101-11-1001';
start transaction;

update bank_account set a_balance = a_balance-10000 where a_no = '101-11-1001';

commit;