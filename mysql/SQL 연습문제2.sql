#날짜 : 2024/01/09
#이름 : 김선광
#내용 : SQL 연습문제2

# 실습 2-1 
create database `Bank`;
Create USER 'bank'@'%' identified by '1234';
grant all privileges on `bank`.* To 'bank'@'%'; 
grant all privileges on `bank`.* To 'kc5353'@'%'; 
grant all privileges on `shop`.* To 'bank'@'%';
flush privileges; 

# 실습 2-2 
create table `bank_customer`(
`c_no`   varchar(14) primary key,
`c_name` varchar(20) not null,
`c_dist` int default 0 not null,
`c_phone`varchar(20) unique not null,
`c_addr` varchar(100) );

create table `bank_account`(
`a_no`        varchar(11) primary key,
`a_item_dist` char(2) not null,
`a_item_name` varchar(20) not null,
`a_c_no`      varchar(14) not null,
`a_balance`   int default 0 not null,
`a_open_date` date not null);

create table `bank_transaction`(
`t_no`       int auto_increment primary key,
`t_a_no`     varchar(11) not null,
`t_dist`     int not null,
`t_amount`   int default 0 not null,
`t_datetime` datetime not null);

select * from bank_customer;              
# 실습 2-3 
insert into bank_customer values('102-22-51094','부산의원',2,'051-518-1010','부산시 남구');
insert into bank_customer values('220-82-52237','(주)한국전산',2,'02-134-1045','서울시 강서구');
insert into bank_customer values('361-22-42867','(주)정보산업',2,'031-563-1253','경기도 광명시');
insert into bank_customer values('730423-1000001','김유신',1,'010-1234-1001','경기도 수원시');
insert into bank_customer values('750210-1000002','김춘추',1,'010-1234-1002','경기도 광주시');
insert into bank_customer values('830513-2000003','선덕여왕',1,'010-1234-1003','서울시 마포구');
insert into bank_customer values('870803-1000004','강감찬',1,'010-1234-1004','서울시 영등포구');
insert into bank_customer values('910912-2000005','신사임당',1, '010-1234-1005','강원도 강릉시');
insert into bank_customer values('9411271000006','이순신',1,'010-1234-1006','부산시 영도구');

insert into bank_account values('101-11-1001','S1','자유저축예금','730423-1000001',420000,'2005-07-21');
insert into bank_account values('101-11-1003','S1','자유저축예금','870830-1000004',53000,'2007-02-17');
insert into bank_account values('101-11-2001','S1','자유저축예금','220-82-52237',23000000,'2003-04-14');
insert into bank_account values('101-11-2002','S1','자유저축예금','361-22-42687',4201000,'2008-12-30');
insert into bank_account values('101-11-2003','S1','자유저축예금','102-22-51094',8325010,'2010-06-07');
insert into bank_account values('101-12-1002','S2','정기적립예금','830513-2000003',1020000,'2011-05-13');
insert into bank_account values('101-13-1005','S3','주택청약예금','941127-1000006',720800,'2012-10-15');
insert into bank_account values('101-21-1004','L1','고객신용대출','910912-2000005',1200500,'2009-08-25');
insert into bank_account values('101-22-1006','L2','예금담보대출','730423-1000001',25000,'2013-12-11');
insert into bank_account values('101-23-1007','L3','주택담보대출','750210-1000002',2700000,'2020-09-23');


insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-11-1001',1,50000,'2022-08-21 04:26:52');
insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-11-1003',2,120000,'2022-08-21 04:26:52');
insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-11-2001',2,300000,'2022-08-21 04:26:52');
insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-12-1002',1,1000000,'2022-08-21 04:26:52');
insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-11-1001',3,0,'2022-08-21 04:26:52');
insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-13-1005',1,200000,'2022-08-21 04:26:52');
insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-11-1001',1,450000,'2022-08-21 04:26:52');
insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-11-2002',2,32000,'2022-08-21 04:26:52');
insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-11-2003',3,0,'2022-08-21 04:26:52');
insert into bank_transaction (`t_a_no`,`t_dist`,`t_amount`,`t_datetime`) values ('101-11-1003',1,75000,'2022-08-21 04:26:52');

# 실습 2-4 모든 계좌를 조회하시오
select * from bank_accout;

# 실습 2-5 모든 고객을 조회하시오
select * from bank_customer;

# 실습 2-6 모든 거래내역을 조회하시오
select * from bank_transaction;

# 실습 2-7 고객의 이름과, 고객번호를 조회하시오
select c_name, c_no from bank_customer;

# 실습 2-8  모든 계좌의 구분번호와 계좌상품 이름을 조회하시오
select a_item_dist, a_item_name from bank_account;

# 실습 2-9 모든 계좌의 구분번호와 계좌상품 이름을 조회, 단 중복 제외
select distinct a_item_dist, a_item_name from bank_account;

# 실습 2-10 자유저축예금 계좌 중 잔고액이 100만원 이상을 조회
select * from bank_account where a_balance>=1000000 and a_item_name = '자유저축예금';
select * from bank_account where a_balance>=1000000 and a_item_dist = 'S1';

# 실습 2-11 경기도에 거주하는 고객을 조회하시오
select * from bank_customer where c_addr like '경기도%';

# 실습 2-12 기업고객을 조회하시오
select * from bank_customer where c_dist=2;

# 실습 2-13 거래내역중 입금만 조회하시오
select * from bank_transaction where t_dist = 1;

# 실습 2-14 출금액이 가장 큰 순서로 조회하시오
select * from bank_transaction where t_dist = 2 order by t_amount desc limit 0,3;

# 실습 2-15 입금액의 총합과 평균을 구하시오
select sum(t_amount) as '입금총합', avg(t_amount) as '입금평균' from bank_transaction where t_dist=1;

# 실습 2-16 출금액의 가장 큰 금액과 가장 작은 금액을 구하시오
select max(t_amount) as '큰 금액', min(t_amount) as '작은금액' from bank_transaction where t_dist = 2;

# 실습 2-17 자유저축 예금계좌에서 큰 잔고액 순으로 조회하시오
select * from bank_account where a_item_name='자유저축예금' order by a_balance desc; 

# 실습 2-18 가장 많은 잔고를 보유한 자유저축 예금계좌를 조회하시오
select * from bank_account where a_item_name = '자유저축예금' order by a_balance desc limit 1;
select * from bank_account where a_item_dist = 'S1' order by a_balance desc limit 1;
select * from bank_account where a_balance=(select max(a_balance) from bank_account where a_item_name = '자유저축예금');

# 실습 2-19 거래내역에서 입금액과 출금액이 가장 큰 순서로 조회 하시오
select * from bank_transaction where t_dist= 1 or t_dist = 2 order by t_dist, t_amount desc;
select * from bank_transaction where t_dist in (1,2) order by t_dist, t_amount desc;
select * from bank_transaction where t_dist in (1,2) order by t_dist, t_amount desc;

# 실습 2-20 group by t_dist
select count(if(t_dist=1,1,null)) as '입금 건수', count(if(t_dist=2,1,null)) as '출금건수', count(if(t_dist=3,1,null)) as 조회건수 from bank_transaction;

# 실습 2-21 거래내역에서 거래 구분번호를 통해 type을 아래와 같이 조회하시오
select t_dist, case when(t_dist = 1 ) then '입금'
					when(t_dist = 2 ) then '출금'
					when(t_dist = 3 ) then '조회'
                    end as type, t_a_no, t_amount from bank_transaction;

# 실습 2-22 각 거래별 카운트를 조회하시오
select t_dist, count(t_no) from bank_transaction group by t_dist;

# 실습 2-23 입금 거래만 계좌별로 합계를 조회하시오
select t_a_no, t_dist, sum(t_amount) from bank_transaction where t_dist=1 group by t_a_no;

# 실습 2-24 입금 거래만 계좌별로 합계를 구하고 10만원 이상만 큰 순서로 조회하시오
select t_a_no, t_dist, sum(t_amount) as '합계' from bank_transaction where t_dist=1 group by t_a_no having 합계>=100000 order by '합계' desc ;

# 실습 2-25 계좌 테이블과 고객 테이블을 결합하시오
select * from bank_account as a join bank_customer as b on a.a_c_no = b.c_no;

# 실습 2-26 아래 그림과같이 조회하시오
select a_no as 계좌번호,
	   a_item_name as 계좌이름,
       c_no as `주민번호(사업자번호)`,
       c_name as 고객명,
       a_balance as 현재전액
       from bank_account as a join bank_customer as b on a.a_c_no = b.c_no;

# 실습 2-27 거래태이블과 계좌테이블을 결합하시오
select * from bank_transaction as a join bank_account as b on a.t_a_no = b.a_no;

# 실습 2-28 아래 그림과같이 조회하시오
select `t_no` as `거래번호`,
       `t_a_no` as `계좌번호`,
       `a_c_no` as `고객번호`,
       `t_dist` as `거래구분`,
       `t_amount` as `거래금액`,
       `t_datetime` as `거래일자`
       from `bank_account` as a join `bank_transaction` as b on a.a_no=b.t_a_no;
       
# 실습 2-29 거래 구분이 입금이고 큰 거래금액 순으로 아래와 같이 데이터가 조회되도록 하시오
select t_no, a_no, c_no, t_dist, a_item_name, c_name, t_amount, t_datetime
       from bank_transaction as a join bank_account as b on a.t_a_no = b.a_no
       join bank_customer as c on b.a_c_no = c.c_no
       where t_dist =1 order by t_amount desc;

# 실습 2-30 거래구분이 입금, 출금이고 개인 고객을 대상으로 거래건수를 조회 단, 거래구분은 작은순서, 거래건수는 큰 순서로 조회하시오
select any_value(t_no), any_value(a_no), c_no, any_value(t_dist) as 구분 , any_value(a_item_name), any_value(c_name),
       count(t_no) as 거래건수 from bank_transaction as a join bank_account as b on a.t_a_no = b.a_no
	   join bank_customer as c on b.a_c_no = c.c_no where t_dist in (1,2) and c_dist = 1 group by c_no order by 구분, 거래건수 desc;
	
