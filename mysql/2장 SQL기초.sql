#날짜 : 2024/01/02
#이름 :김선광
#내용 : 2장 SQL 기초


#실습 2-1 테이블 생성 및 제거
create table `User1`(
`uid` varchar(10),
`name` varchar(10),
`hp` char(13),
`age` int);

use studydb;

show databases;

drop table `User1`;

#실습 2-2 테이블에 데이터 추가
insert into `User1` values('A101', '김유신', '010-1234-1111',25);
insert into `User1` values('A102', '김춘추', '010-1234-2222',23);
insert into `User1` values('A103', '장보고', '010-1234-3333',32);
insert into `User1` (`uid`, `name`,`age`) values('A104', '강감찬',45);
insert into `User1` set `uid`='A105', `name`= '이순신', `hp`= '010-1234-5555';

#실습 2-3 테이블에 데이터 조회
select* from `User1`;
select* from `User1` where `uid`='A101';
select* from `User1` where `name`= '김춘추';
select* from `User1` where `age` <30;
select* from `User1` where `age`>=30;
select `uid`, `name`, `age` from `User1`;

select* from `User1Copy`;


#실습 2-4 테이블에 데이터 수정
update `User1` set `hp`='010-1234-4444' where `uid`='A104';
update `User1` set `age`= 51 where `uid`='A105';
update `User1` set `hp` = '101-1234-1011', `age` = 27 where `uid`='A101';


#실습 2-5 테이블에 데이터 삭제
delete from `User1` where `uid`= 'A101';
delete from `User1` where `uid`='A102' and `age`=25;
delete from `User1` where `age`>=30;

#실습 2-6 테이블 수정
alter table `User1` add `gender` tinyint;
alter table `User1` add `birth` char(10) after `name`;
alter table `User1` modify `gneder` char(1);
alter table `User1` modify `age` tinyint;
alter table `User1` drop `gender`;


#실습 2-7 테이블 복사
create table `User1Copy` like `User1`;
insert into `User1Copy` select* from `User1`;


#실습 2-8 아래와 같이 테이블을 생성 후 데이터를 입력하시오
# 테이블 추가 1
create table `TblUser`(
`user_id` varchar(10),
`user_name` varchar(10),
`user_hp` char(13),
`user_age` tinyint,
`user_addr` varchar(10));

# 테이블 데이터 추가 1
insert into `TblUser` (uid,name,hp,age) values ('A101', '김유신', '010-1234-1001', 25);
insert into `TblUser` values ('A102', '김춘추', '010-1234-1002', 23, '경북 경주시');
insert into `TblUser` (`user_id`, `user_name`, `user_age`, `user_addr`) values('p103', '장보고', 31, '전남 완도군');
insert into `TblUser` (`user_id`, `user_name`, `user_addr`) values('p104', '강감찬', '서울시 중구');
insert into `TblUser` (`user_id`, `user_name`, `user_hp`, `user_age`) values('p105', '이순신', '010-1234-1005', 50); 

# 테이블 확인1
select *from `TblUser`;

# 잘못된거 삭제
delete from `TblUser` where `user_id`='p104';

# 테이블 추가 2
create table `TblProduct`(
`prod_no` int,
`prod_name` varchar(10),
`prod_price` varchar(10),
`prod_stock` int,
`prod_company` varchar(10),
`prod_date` char(10));

drop table `TblProduct`;

# 테이블 데이터 추가 2
insert into `TblProduct` values (1001,'냉장고','800,000',25,'LG전자','2022-01-06');
insert into `TblProduct` values (1002,'노트북','1,200,000',120,'삼성전자','2022-01-07');
insert into `TblProduct` values (1003,'모니터','350,000',35,'LG전자','2023-01-13');
insert into `TblProduct` values (1004,'세탁기','1,000,000',80,'삼성전자','2021-01-01');
insert into `TblProduct` values (1005,'컴퓨터','1,500,000',20,'삼성전자','2023-10-01');
insert into `TblProduct` (`prod_no`, `prod_name`, `prod_price`,`prod_stock`) values(1006,'휴대폰','950,000',120);

# 테이블 데이터 확인
select *from `TblProduct`;

#실습 2-9
# 마지막 줄 'prod_no'=1006;
select* from `tblUser`;
select `user_name` from `tblUser`;
select* from `tblUser`where `user_id`='p102';
select* from `tblUser`where `user_id`='p104' or  `user_id`='p105';
select* from `tblUser`where `user_addr`='부산시 금정구';
select* from `tblUser`where `user_age`> 30;
select* from `tblUser`where `user_hp` is null;
update `tblUser` set `user_age`=42 where `user_id`='p104';
update `tblUser` set `user_addr`='부산시 진구' where `user_id`='p105';
delete from `tblUser` where `user_id`='p103';

select* from `tblProduct`;
select `prod_name` from `tblProduct`;
select `prod_name` ,`prod_company`, `prod_price` from `tblProduct`;
select* from `tblProduct`where `prod_company`='LG전자';
select* from `tblProduct`where `prod_company`='삼성전자';
update `tblProduct`set `prod_company`='삼성전자', `prod_date`='2024-01-01' where `prod_no`=1006;


