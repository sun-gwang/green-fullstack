#날짜 : 2023/01/03
#이름 : 김선광
#내용 : 4장 SQL고급


#실습 4-1
CREATE TABLE `Member` (
	`uid`	VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`hp`	CHAR(13) UNIQUE NOT NULL,
	`pos`	VARCHAR(10) default '사원',
	`dep`	TINYINT,
	`rdate`	DATETIME  NOT NULL
);
drop table `member`;
select* from `member`;

CREATE TABLE `Department` (
	`depNo`	TINYINT PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`tel`	CHAR(12) NOT NULL
);

drop table `Department`;
select* from `Department`;

CREATE TABLE `Sales` (
	`seq`	INT AUTO_INCREMENT PRIMARY KEY,
	`uid`	VARCHAR(10) NOT NULL,
	`year`	YEAR NOT NULL,
	`month`	TINYINT NOT NULL,
	`sale`	INT NOT NULL
);

drop table `Sales`;
select* from `Sales`;

#실습 4-2
INSERT INTO `Member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, NOW());
INSERT INTO `Member` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, NOW());
INSERT INTO `Member` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, NOW());
INSERT INTO `Member` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, NOW());
INSERT INTO `Member` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, NOW());
INSERT INTO `Member` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a110', '정약용',   '010-1234-1010', '사원', 105, NOW());
INSERT INTO `Member` VALUES ('a111', '박지원',   '010-1234-1011', '사원', 105, NOW());

INSERT INTO `Department` VALUES (101, '영업1부', '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부', '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부', '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부', '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부', '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부', '051-512-1007');

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);    


#실습 4-3 데이터 조회 연산자
select* from `member` where `name` = '김유신';
select* from `member` where `pos` ='차장' and `dep`=101;
select* from `member` where `pos` = '차장' or `dep`=101;
select* from `member` where `name` != '김춘추';
select* from `member` where `name` <> '김춘추';
select* from `member` where `pos`='사원' or `pos`= '대리';
select* from `member` where `pos` in ('사원','대리');
select* from `member` where `dep` in (101,102,103);
select* from `member` where `name` like '%신';    # % = 와일드 카드(어떤게 와도 상관 없음)
select* from `member` where `name` like '김%';
select* from `member` where `name` like '_성_';
select* from `member` where `name` like '정_';    # _ = 뒤에 한글자가 온다(정철) , __ = 뒤에 두글자가 온다(정약용)
select* from `sales` where `sale` > 50000;
select* from `sales` where `sale` >=50000 and `sale`<100000 and `month`=1;
select* from `sales` where `sale` between 50000 and 100000;
select* from `sales` where `sale` not between 50000 and 100000;
select* from `sales` where `year` in(2020);
select* from `sales` where `month` in (1,2);

#실습 4-4 order by 정렬 (오름차순 asc or 내림차순 desc)
select* from `sales` order by `sale`; 
select* from `sales` order by `sale` asc ;  # order by가 없으면 기본키 기준으로 정렬 기본이 오름차순(asc생략 가능)
select* from `sales` order by `sale` desc;
select* from `member` order by `name`;      # 이름을 order by하면 사전순서대로 정렬
select* from `member` order by `name` desc; 
select* from `member` order by `rdate` asc;
select* from `sales` where `sale` >50000 order by `sale` desc;
select* from `sales` where `sale`> 50000 order by `year`, `month`, `sale` desc; # sale만 내림차순으로 year, month 뒤에 ASC숨김되어있다 생각



#실습 4-5 Limit 여러건의 데이터를 정렬할 때 개수를 제한해서 조회
select* from `sales` limit 3; 
select* from `sales` limit 0,3;  # 스타트, 갯수 0,3= 1번째 부터 3개까지
select* from `sales` limit 1,2;
select* from `sales` limit 5,3;
select* from `sales` order by `sale` desc limit 3,5;
select* from `sales` where `sale` <50000 order by `sale` desc limit 3;
select* from `sales` where `sale` >50000 order by `year` desc, `month`, `sale` desc limit 5;

#실습 4-6 내장함수 sum ,avg max min ceil(올림) floor(내림) round(반올림) rand(0~1 사이 임의 실수) count(*) (전체 튜플(행)개수)
select sum(`sale`) from `sales`;
select sum(`sale`) as `합계` from `sales`;
select avg(`sale`) as `평균` from `sales`;
select ceiling(1.2); # ceiling = ceil
select ceiling(1.8);
select ceil(1.2);
select floor(1.2);
select floor(1.8);
select round(1.2);
select round(1.8);
select rand();
select ceil(rand()*10);  # 3.13247 에서 ceil(올림) 해서 정수값이 랜덤으로 나옴
select round(rand()*10); # 0~10 까지 (반올림이니까)
select count(`sale`) as `갯수` from `sales`; # sale 기준으로 갯수를 세는데, null이 있으면 null빼고 count ex)30개중 null 1개 있으면 29개
select count(*) as `갯수` from `sales`; # 전체 갯수를 조회(count)
select left('HelloWorld',5); # 왼쪽부터 5개
select substring('Helloworld',6,5); # 6자리부터 5개
select concat('Hello','world'); # 두개 병합
select concat(`uid`,`name`,`hp`) from `member` where `uid`= 'a108';
select curdate(); # 지금 날짜
select curtime(); # 지금 시간
select now();     # 지금 날짜 시간
insert into `member` values ('a112', '유관순', '010-1234-1012', '대리', 107, now()); # 현재 시간으로 튜플 추가

#실습 4-7
#실습 4-8
#실습 4-9

#실습 4-10
select * from `sales` group by `uid`;
select * from `sales` group by `year`;
select * from `sales` group by `uid`, `year`; 
select `uid`, count(*) from `sales` group by `uid`; # uid 개수를  그룹화하여 count 
select `uid`, sum(sale) as `합계` from `sales` group by `uid`;
select `uid`, `year`, sum(`sale`) as `합계` from `sales` group by `uid`,`year`;


#실습 4-11
select `uid`, `year`, sum(`sale`) as `합계` from `sales` group by `uid` having `합계` >=200000;




#실습 4-12
create table `sales2` like `sales`;
insert into `seles2` select * from `sales`;
update `seles2` set `year` = `year`+3;
select * from `sales` union select * from `seles2`;
select * from `sales` where `sale` >=100000 union select * from `sales2` where `sale` >100000;
############################2개 더 해야함


#실습 4-13
SELECT * FROM `Sales` INNER JOIN `Member` ON `Sales`.uid = `Member`.uid;
select * from `sales` as a join `member` as b on a.uid = b.uid;
select * from `sales` as a, `member` as b where a.uid = b.uid;
select * from  `sales` as a join `member` as b using(`uid`);

select * from `sales` as a join `member` as b on a.uid=b.uid join `department` as c on b.dep = c.depNo;
select a.uid,
       a.year,
       a.month,
       a.sale,
       b.name,
       b.hp,
       c.name from `sales` as a join `member` as b on a.uid=b.uid join `department` as c on b.dep = c.depNo;

#실습 4-14
select * from `sales` as a inner join `member` as b on a.uid = b.uid;
select * from `sales` as a left join `member` as b on a.uid = b.uid;
select * from `sales` as a right join `member` as b on a.uid = b.uid;

#실습 4-15
#실습 4-16
#실습 4-17
