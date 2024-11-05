#날짜 : 2024/01/03
#이름 : 김선광
#내용 : 3장 제약조건
show databases;



#실습 3-1 기본키(Primary Key) 데이터를 구분할 수 있는 식별자 역할을 하는 키, NULL,중복값 입력 불가능,
#        하나의 테이블에 하나의 기본키를 지정 가능 기본 Index 지원으로 빠른 조회가 가능하다
CREATE TABLE `User2` (
	`uid`	VARCHAR(10) primary key,
    `name`	VARCHAR(10),
    `birth`	CHAR(10),
    `addr`	VARCHAR(50)
);

DROP TABLE `User2`;
select* from `User2`;

#실습 3-2 기본키(Primary Key) 식별자 역할을 하는 키, 중복이나 null값 모두 입력 불가능 이순신 안들어감 중복
INSERT INTO `User2` VALUES ('A101', '김유신', '1968-05-09', '경남 김해시');
INSERT INTO `User2` VALUES ('A102', '김춘추', '1972-11-23', '경남 경주시');
INSERT INTO `User2` VALUES ('A103', '장보고', '1978-03-01', '전남 완도군');
INSERT INTO `User2` VALUES ('A105', '강감찬', '1979-08-16', '서울시 관악구');
INSERT INTO `User2` VALUES ('A105', '이순신', '1981-05-23', '부산시 진구');

#실습 3-3 고유키 실습하기 중복되지 않는 유일한 값을 입력하야 하는 조건을 갖는 키, 중복은 안되지만 NULL은 가능한게 기본키와 차이점
CREATE TABLE `User3` (
	`uid` 	VARCHAR(10) PRIMARY KEY,
    `name` 	VARCHAR(10),
    `birth` CHAR(10),
    `hp` 	CHAR(13) UNIQUE,
    `addr`	VARCHAR(50)
);

drop table `User3`;
select* from `User3`;

#실습 3-4 고유키(unique) 중복되지 않는 유일한 값을 입력해야함, null값 허용, 이순신 안들어감
INSERT INTO `User3` VALUES ('A101', '김유신', '1968-05-09', '010-1234-1111', '경남 김해시');
INSERT INTO `User3` VALUES ('A102', '김춘추', '1972-11-23', '010-1234-2222', '경남 경주시');
INSERT INTO `User3` VALUES ('A103', '장보고', '1978-03-01', '010-1234-3333', '전남 완도군');
INSERT INTO `User3` VALUES ('A104', '강감찬', '1979-08-16', '010-1234-4444', '서울시 관악구');
INSERT INTO `User3` VALUES ('A105', '이순신', '1981-05-23', '010-1234-2222', '부산시 진구');
INSERT INTO `User3` VALUES ('A106', '안중근', '1981-05-21', null, '부산시 진구');

#실습 3-5  외래키 두 테이블 사이의 관계를 선언하여 데이터의 무결성을 보장
#         외래키를 가진 테이블이 자식 테이블,   외래키를 참조하는 테이블이 부모테이블, 외래키 값은 NULL또는 부모 테이블의 기본키 값과 동일하다.
create table `Parent` (
	`pid`	VARCHAR(10) PRIMARY KEY,
    `name`	VARCHAR(10),
    `birth`	CHAR(10),
    `addr`	VARCHAR(100)
);

create table `Child` (                    # 외래키를 가졌으니 자식테이블
	`cid`	 VARCHAR(10) PRIMARY KEY,
    `name`	 VARCHAR(10),
    `hp`	 CHAR(13) UNIQUE,
    `parent` VARCHAR(10),
    foreign key (`parent`) references `Parent` (`pid`)
);

drop table `Parent`;
select *from `parent`;

drop table `Child`;
select *from `Child`;

#실습 3-6
INSERT INTO `Parent` VALUES ('P101', '김유신', '1968-05-09', '경남 김해시');
INSERT INTO `Parent` VALUES ('P102', '김춘추', '1972-11-23', '경남 경주시');
INSERT INTO `Parent` VALUES ('P103', '장보고', '1978-03-01', '전남 완도군');
INSERT INTO `Parent` VALUES ('P104', '강감찬', '1979-08-16', '서울시 관악구');
INSERT INTO `Parent` VALUES ('P105', '이순신', '1981-05-23', '부산시 진구');
INSERT INTO `Child` VALUES ('C101', '김철수', '010-1234-1001', 'P101');
INSERT INTO `Child` VALUES ('C102', '김영희', '010-1234-1002', 'P101');
INSERT INTO `Child` VALUES ('C103', '강철수', '010-1234-1003', 'P103');
INSERT INTO `Child` VALUES ('C104', '이철수', '010-1234-1004', 'P107');  # 외래키로 설정한 값이 NULL이나 부모테이블의 기본키 값과 동일하지 않아서 안됨

#실습 3-7 DEFAULT 값을 입력하지 않아도 자동으로 입력되는 기본값, 모든 컬럼의 DEFAULT는 NULL이고 데이터를 입력하는 컬럼은 NOT NULL으로 설정한다
#        기본키는 자동으로 NOT NULL으로 설정
create table `User4` (
	`uid`		varchar(10) primary key, # 기본키 중복 X, null X
    `name`		varchar(10) not null,    # NULL을 입력하지 못하도록 설정
    `gender`	char(1),
    `age`		int default 1,           # 아무것도 입력하지 않았을 때(NULL)일 때 1로 default
    `hp`		char(13) unique,         # 고유키 중복X, null O
    `addr`		varchar(20)
);

select * from `user4`;
drop table `user4`;

#실습 3-8
INSERT INTO `User4` VALUES ('A101', '김유신', 'M', 25, '010-1234-1111', '경남 김해시');
INSERT INTO `User4` VALUES ('A102', '김춘추', 'M', 23, '010-1234-2222', '경남 경주시');
INSERT INTO `User4` VALUES ('A103', '장보고', 'M', 35, '010-1234-3333', '전남 완도군');
INSERT INTO `User4` VALUES ('A104', '강감찬', 'M', 42, '010-1234-4444', '서울시 관악구');
INSERT INTO `User4` (`uid`, `name`, `gender`, `hp`, `addr`) VALUES ('A105', '이순신', 'M', '010-1234-5555', '부산시 진구'); #age의 default를 1로 설정 했으니 입력하지 않아도 1이 입력됨
INSERT INTO `User4` VALUES ('A106', '신사임당', 'F', 32, null, '강릉시');
INSERT INTO `User4` VALUES ('A107', '허난설헌', 'F', 27, null, '경기도 광주시');

#실습 3-9 Check 제약조건은 저장할 수 있는 값의 범위 또는 범주를 정의해서 입력되는 데이터 검사, auto_increment 데이터가 추가되면 1부터 증가하는 값이 자동으로 입력되는 속성
#              기본키를 지정할 후보키가 없는 테이블에 사용한다.  
create table `User5` (
	`seq`	 int primary key auto_increment,                  # 기본키, 입력하지 않아도 1부터 증가
    `name`	 varchar(10) not null,                            # NOT NULL, NULL값을 입력 못하도록 설정
    `gender` char(1) check (`gender` in ('M', 'F')),          # check, gender 열에 M,F외에 입력하지 못하도록 설정
    `age`	 int default 1 check (`age` > 0 and `age` < 100), # default, 아무것도 입력하지 않았을 때 1입력 + age열의 값 범위가 0~100으로 설정
    `addr`	 varchar(20)
);

select * from `user5`;
drop table `user5`;

#실습 3-10
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('김유신', 'M', 25, '경남 김해시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('김춘추', 'M', 23, '경남 경주시'); 
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('장보고', 'M', 35, '전남 완도군');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('강감찬', 'M', 42, '서울시 관악구');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('이순신', 'A', 51, '부산시');       # gender에 F나 M말고 다른게 왔기 때문에 데이터입력안됨
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('신사임당', 'F', -1, '강릉시');      # 