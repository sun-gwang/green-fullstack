#날짜 : 2024/01/08
#이름 : 김선광
#내용 : 교제 Ch03 SQL 기본문법

create database market_db;
create user 'Shop'@'%' identified by '1234';
grant all privileges on merket_db.* TO 'Shop'@'%';
flush privileges;


#p111 손코딩 use문 (select 문 실행 전 사용할 데이터베이스 지정)
use market_db; 

#p112 손코딩 select와 from
use market_db;
select * from member;

#p114 손코딩 필요한 열만 select
select mem_name from member;

#p115 손코딩 여러개의 열 select
select addr, debut_date, mem_name from member;

#p116 손코딩 기본적인 where 절
select * from member where mem_name ='블랙핑크';

#p117 손코딩 기본적인 where 절 
select * from member where mem_number =4;

#p117 손코딩 관계연산자, 논리연산자의 사용
select mem_id, mem_name from member where height <=162;

#p117 손코딩 2가지 이상의 조건을 만족하는 and 연산자
select mem_name, height, mem_number from member where height>=165 and mem_number>6;

#p118 손코딩 둘 중 하나만 만족해도 되는 or 연산자
select mem_name, height, mem_number from member where height>=165 or mem_number>6;

#p118 손코딩 and를 사용한 범위 조회
select mem_name, height from member where height>= 163 and height<=165;

#p118 손코딩 between ~ and
select mem_name, height from member where height between 163 and 165;

#p119 손코딩 문자데이터 or사용
select mem_name, addr from member where addr = '경기' or addr = '전남' or addr ='경남';

#p119 손코딩 in 사용
select mem_name, addr from member where addr in ('경기','전남','경남');

#p119 손코딩 문자열의 일부 검색 like
select * from member where mem_name like '우%';

#p120 손코딩 문자열 매치 언더바(_)
select * from member where mem_name like '__핑크';

#p125 손코딩 order by 절 순서 조절
select mem_id, mem_name, debut_date from member order by debut_date;

#p126 손코딩 order by __ desc로 내림차순 정렬
select mem_id, mem_name, debut_date from member order by debut_date desc;

#p126 손코딩 order by , where 함께 사용하기(틀린 쿼리문)
select mem_id, mem_name, debut_date, height from member order by height desc where height >=164;

#p127 손코딩 order by , where 함께 사용하기(올바른 사용)
select mem_id, mem_name, debut_date, height from member where height>=164 order by height desc;

#p127 손코딩 정렬기준여러개 설정하기(첫 번째 기준으로 정렬 후 같은 값이 있을 때 다음 기준으로 정렬)
select mem_id, mem_name, debut_date, height from member where height >= 164 order by height desc, debut_date asc;

#p128 손코딩 출력 갯수 제한 limit (앞에서 3건만)
select * from member limit 3;

#p128 손코딩 order by와 limit 같이 사용
select mem_name, debut_date from member order by debut_date limit 3;

#p129 손코딩 중간부터 갯수 설정 (3번째 부터 2개만)
select mem_name, height from member order by height desc limit 3,2;

#p129 손코딩 
select addr from member;

#p130 손코딩 이름순 정렬
select addr from member order by addr;

#p130 손코딩 중복된데이터 제거후 출력 distinct
select distinct addr from member;

#p131 손코딩 group by 절
select mem_id, amount from buy order by mem_id;

#p132 손코딩 집계함수 sum과 함께 group by 사용
select mem_id, sum(amount) from buy group by mem_id;

#p133 손코딩 구매한 금액의 총합 출력하기
select mem_id "회원 아이디", sum(price*amount) "총 구매 금액" from buy group by mem_id;

#p133 손코딩 평균 구하기
select avg(amount) "평균 구매 개수" from buy;

#p134 손코딩 그룹별 평균 구매 갯수
select mem_id, avg(amount) "평균 구매 개수" from buy group by mem_id;

#p134 손코딩 연락처가 있는 회원의 수 카운트
select count(*) from member;

#p134 손코딩 
select count(phone1) "연락처가 있는 회원" from member;

#p134 손코딩 having 절 sum으로 회원별 총 구매액 계산
select  mem_id "회원아이디", sum(price * amount) "총 구매 금액" from buy group by mem_id;

#p135 손코딩 집계함수는 where절에 나타날 수 없다
select mem_id "회원아이디", sum(price*amount) "총 구매 금액" from buy where sum(price*amount)>1000;

#p135 손코딩 where 대신 사용하는 having 절 ( 꼭 group by 절 다음에 나와야 함) 총 구매가격이 1000이상인 그룹만 출력
select mem_id "회원 아이디", sum(price*amount) "총 구매 금액" from buy group by mem_id having sum(price*amount) >1000;

#p136 손코딩 having절 + 정렬 (group by)
select mem_id "회원 아이디", sum(price*amount) "총 구매 금액" from buy group by mem_id having sum(price*amount)>1000
order by sum(price*amount) desc;
 
#p141 손코딩 데이터 입력 insert
use market_db;
create table hongong1 (toy_id   int,
                       toy_name char(4),
					   age      int);

insert into hongong1 values(1,'우디', 25);

#p141 손코딩 특정 열을 입력하고 싶지 않을 때
insert into hongong1 (toy_id, toy_name) values(2, '버즈');

#p141 손코딩 열의 순서를 바꿔서 입력하고 싶을 때
insert into hongong1 (toy_name, age, toy_id) values ('제시', 20,3);

#p142 손코딩 자동으로 증가하는 auto_increment
create table hongong2(
       toy_id int auto_increment primary key,
       toy_name char(4),
       age int);
       
#p142 손코딩 자동 증가하는 부분을 null값으로 채워 자동으로 입력시키기
insert hongong2 values (null, '보핍', 25);
insert hongong2 values (null, '슬링키', 22);
insert hongong2 values (null, '렉스', 21);
select * from hongong2;

#p142 손코딩 3까지 입력됐는지 확인
select last_insert_id();

#p143 손코딩 auto_increment 100으로 지정하기
alter table hongong2 auto_increment=100;
insert into hongong2 values (null, '재남', 35);
select * from hongong2;

#p143 손코딩 auto_increment 1000으로 지정 후, 3씩 증가하는 방법
create table hongong3(
        toy_id   int auto_increment primary key,
        toy_name char(4),
        age      int);

alter table hongong3 auto_increment = 1000;  #시작값 1000으로 지정
set @@auto_increment_increment=3;            #증가량 3으로 지정

#p144 손코딩 auto_increment 1000, 증가량3 확인
insert into hongong3 values (null, '토마스', 20);
insert into hongong3 values (null, '제임스', 23);
insert into hongong3 values (null, '고든', 25);
select * from hongong3;

#p145 손코딩 다른 테이블의 데이터를 입력하는 Insert into ~ selecet
select count(*) from world.city;   # 데이터베이스 이름.테이블 이름

#p145 손코딩 desc 테이블 구조 확인
desc world.city;

#p145 손코딩 데이터 살펴보기
select * from world.city limit 5;

#p146 손코딩 도시이름, 인구 테이블 만들기
create table city_popul (city_name char(35), population int);

#p146 손코딩 다른 테이블의 데이터 가져오기( world.city의 테이블내용을 city_popul로)
insert city_popul select name, population from world.city;

#p147 손코딩 도시이름 seoul을 서울로 변경하기
update city_popul set city_name = '서울' where city_name = 'Seoul';
select * from city_popul where city_name = '서울';

#p148 손코딩 한꺼번에 여러개의 업데이트 하기(New York -> 뉴욕, population을 0으로)
update city_popul set city_name = '뉴욕', population = 0 where city_name = 'New York';
select * from city_popul where city_name = '뉴욕'; 

#p148 손코딩 where가 없는 update문 (오류)
update city_population set city_name = '서울';

#p149 손코딩
Update city_popul set population = population/10000;
select * from city_popul limit 5;

#p149 손코딩 데이터 삭제 delete delete from 테이블이름 where 조건
delete from city_popul where city_name like 'New%';

#159 손코딩
use market_db;
create table hongong4(
`tinyint_col`  tinyint,
`smallint_col` smallint,
`int_col`      int,
`bigin_col`    bigint);

#p160 손코딩
insert into hongong4 values(127,32767,2147483647,9000000000000000000); 

#p160 손코딩
create table member(
mem_id      char(8) not null primary key,
mem_name    varchar(10) not null, 
mem_number  int not null, -- 인원수
addr        char(2) not null, -- 주소
phone1      char(3),  -- 연락처의 국번
phone2      char(8),  -- 연락처의 나머지 전화번호
height      smallint, -- 평균키
debut_date  date);   -- 데뷔일자

drop table member;

#p164 손코딩 varchar는 16383까지
create table big_table (
data1 char(256),
data2 varchar(16384) );

#p111 손코딩

#p111 손코딩
#p111 손코딩

#p177 손코딩 inner join
use market_db;
select * from buy inner join member on buy. mem_id = member.mem_id where buy.mem_id='GRL';

#p179 손코딩
select * from buy inner join member on buy.mem_id = member.mem_id;

#p179 손코딩
select mem_id, mem_name, prod_name, addr, concat(phone1, phone2) '연락처' from buy inner join member on buy.mem_id = member.mem_id;


#p111 손코딩
#p111 손코딩
#p111 손코딩
#p111 손코딩
#p111 손코딩
#p111 손코딩
#p111 손코딩
#p111 손코딩