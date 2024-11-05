#날짜 : 2024/01/10
#이름 : 김선광
#내용 : SQL 연습문제3

# 실습 3-1 데이터베이스와 사용자를 생성하시오
create database college;
create user 'college'@'%' identified by '1234';
grant all privileges on college.* to 'college'@'%';
flush privileges;

# 실습 3-2 테이블을 생성하시오
create table student(
`stdNo`      char(8) primary key,
`stdName`    varchar(20) not null,
`stdHp`      char(13) not null,
`stdYear`    int not null,
`stdAddress` varchar(100) default null unique);

create table Lecture(
`lecNo`     int primary key,
`lecName`   varchar(20) not null,
`lecCredit` int not null,
`lecTime`   int not null,
`lecClass`  varchar(10) default null unique);

create table register(
`regSTDNo`      char(8) not null,
`regLecNo`      int not null,
`regMidScore`   int default null,
`regFinalScore` int default null,
`regTotalScore`  int default null,
`regGrade`       char(1) default null);

drop table register;
# 실습 3-3
insert student (stdNo, stdName, stdHp, stdYear) values ('20201016', '김유신', '010-1234-1001', 3);
insert student values('20201126','김춘추','010-1234-1002',3,'경상남도 경주시');
insert student values('20210216','장보고','010-1234-1003',2,'전라남도 완도시');
insert student values('20210326','강감찬','010-1234-1004',2,'서울시 영등포구');
insert student values('20220416','이순신','010-1234-1005',1,'부산시 부산진구');
insert student values('20220521','송상현','010-1234-1006',1,'부산시 동래구');

insert lecture values(159,'인지행동심리학',3,40,'본304');
insert lecture values(167,'운영체제론',3,25,'본B05');
insert lecture values(234, '중급영문법',3,20,'본201');
insert lecture values(239, '세법개론',3,40,'본204');
insert lecture values(248, '빅데이터개론',3,20, '본B01');
insert lecture values(253, '컴퓨팅사고와코딩',2,10,'본B02');
insert lecture values(349, '사회복지마케팅',2,50,'본	301');

insert register (regStdNo,regLecNo) values('20201126',234);
insert register (regStdNo,regLecNo) values('20201016',248);
insert register (regStdNo,regLecNo) values('20201016',253);
insert register (regStdNo,regLecNo) values('20201126',239);
insert register (regStdNo,regLecNo) values('20210216',349);
insert register (regStdNo,regLecNo) values('20210326',349);
insert register (regStdNo,regLecNo) values('20201016',167);
insert register (regStdNo,regLecNo) values('20220416',349);

# 실습 3-4
select * from lecture;

# 실습 3-5
select * from student;

# 실습 3-6
select * from register;

# 실습 3-7 3학년 학생을 조회
select * from student where stdyear=3;

# 실습 3-8 2학점짜리 강좌를 조회
select * from lecture where leccredit =2;

# 실습 3-9 중간고사, 기말고사 점수 업데이트하시오
update register set regmidscore = 36, regfinalscore =42 where regstdno = 20201126 and reglecno = 234;
update register set regmidscore = 24, regfinalscore =62 where regstdno = 20201016 and reglecno = 248;
update register set regmidscore = 28, regfinalscore =40 where regstdno = 20201016 and reglecno = 253;
update register set regmidscore = 37, regfinalscore =57 where regstdno = 20201126 and reglecno = 239;
update register set regmidscore = 28, regfinalscore =68 where regstdno = 20210216 and reglecno = 349;
update register set regmidscore = 16, regfinalscore =65 where regstdno = 20210326 and reglecno = 349;
update register set regmidscore = 18, regfinalscore =38 where regstdno = 20201016 and reglecno = 167;
update register set regmidscore = 25, regfinalscore =58 where regstdno = 20220416 and reglecno = 349;

# 실습 3-10 총점과 등급을 입력 후 조회하시오
update register set regTotalScore = regmidscore + regfinalscore, regGrade = if(regTotalScore >=90, 'A',
																			if(regTotalScore >=80, 'B',
																			if(regTotalScore >=70, 'C',
																			if(regTotalScore >=60, 'D', 'F'))));


# 실습 3-11 점수가 큰 순서대로 정렬하시오
select * from register order by `regTotalScore` desc;

# 실습 3-12 강좌번호가 349이면서 총점이 가장 큰순서대로 조회하시오
select * from register where reglecno=349 order by regtotalscore desc;

# 실습 3-13 30시간 이상인 강좌를 조회하시오
select * from lecture where lectime >=30;

# 실습 3-14 강좌명과 강의실을 조회하시오
select lecname, lecclass from lecture;
 
# 실습 3-15 학번과 이름을 조회하시오
select stdno, stdname from student;

# 실습 3-16 주소를 입력하지 않은 학생을 조회하시오
select * from student where stdaddress is null;

# 실습 3-17 부산에 거주하는 학생을 조회하시오
select * from student where stdaddress like '부산시%';

# 실습 3-18 학생과 수강테이블을 결합하시오 단 수강신청을 하지 않아 점수가 없어도 조회 될 것 외부조인 해야함
select * from student as a left join register as b on a.stdno=b.regstdno; 

# 실습 3-19 아래와 같이 조회하시오
select a.stdno,
        a.stdname,
        b.reglecno,
        b.regmidscore,
        b.regfinalscore,
        b.regtotalscore,
        b.reggrade from student as a join register as b where a.stdno = b.regstdno;

# 실습 3-20 강좌번호 349를 수강신청한 학생의 이름과 학번을 조회하시오
select stdname, stdno, reglecno from student as a join register as b on a.stdno = b.regstdno where b.reglecno=349;

# 실습 3-21 학생별 수강 신청 건수와 모든 수강과목의 전체점수 합계, 평균을 조회하시오 (연산이있으면 group by를 생각해야함)
select stdno, stdname, count(stdno) as '수강신청 건수', sum(regtotalscore) as '종합점수', sum(regtotalscore)/count(stdno) as '평균'
       from student as a join register as b on a.stdno = b.regstdno group by  stdno order by stdno;

# 실습 3-22 수강테이블과 강좌테이블을 결합하시오
select * from register as a join lecture as b on a.reglecno = b.lecno;

# 실습 3-23 아래와같이 조회하시오
select  regstdno,
		reglecno,
		lecname,
		regmidscore,
		regfinalscore,
		regtotalscore,
		reggrade from register as a join lecture as b on a.reglecno = b.lecno; 
        
# 실습 3-24 사회복지 마케팅 강좌를 신청한 건수와 평균을 조회하시오
select count(*) as '사회복지 마케팅 수강 신청건수', avg(regtotalscore) as '사회복지 마케팅 평균' from register as a join lecture as b 
	   on a.reglecno = b.lecno where b.lecname = '사회복지마케팅';
       
# 실습 3-25 A등급을 받은 학번과 강좌명을 조회하시오
select regstdno, lecname from register as a join lecture as b on a.reglecno = b.lecno where a.regGrade='A';

# 실습 3-26 테이블 세개 결합
select * from student as a join register as b on a.stdno = b.regstdno join lecture as c on b.reglecno = c.lecno;

# 실습 3-27 아래와같이 조회하시오
select stdno,
	   stdname,
	   lecno,
       lecname,
       regmidscore,
       regfinalscore,
       regtotalscore,
       reggrade from student as a join register as b on a.stdno = b.regstdno join lecture as c on b.reglecno = c.lecno order by reggrade asc, regfinalscore desc;

# 실습 3-28 
select stdno,
       stdname,
       lecname,
       regtotalscore,
       reggrade from student as a join register as b on a.stdno = b.regstdno join lecture as c on b.reglecno = c.lecno where b.regGrade='f';
       
# 실습 3-29 학생별 이수학점을 조회하시오. 단 F등급을 받은 과목은 학점으로 인정되지 않음 (primary key로 grouping 해주는게 좋다)
select stdno, stdname, sum(leccredit) as '이수학점' from student as a join register as b on a.stdno = b.regstdno
       join lecture as c on b.reglecno = c.lecno where b.reggrade <> 'F' group by a.stdno order by a.stdno;

# 실습 3-30 신청과목과 이수과목을 조회하시오 단 F등급을 받은 과목은 이수과목으로 인정 안됨
select stdno, stdname, group_concat(lecname) as '신청과목', group_concat(if(regtotalscore >=60, lecname, null)) as '이수과목'
from student as a join register as b on a.stdno = b.regstdno join lecture as c on b.reglecno = c.lecno group by a.stdno;

