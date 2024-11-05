# 날짜 : 24/01/15
# 이름 : 김선광
# 내용 : Database 모델링 실습


insert into student (stdNo, depNo, proNo, stdName, stdJumin, stdHp, stdAddr) values ('20101001',10,'P10101', '정우성', '760121-1234567', '010-1101-7601','서울');
insert into student (stdNo, depNo, proNo, stdName, stdJumin, stdHp, stdAddr) values ('20101002',10,'P10101', '이정재', '750611-1234567', '010-1102-7506','서울');
insert into student values ('20111011',11,'p11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
insert into student values ('20111013',11,'p11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','대전');
insert into student values ('20111014',11,'p11104','원빈','660912-1234567','010-2104-6609','one@naver.com','대전');
insert into student values ('21221010',22,'p22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
insert into student values ('21231002',23,'p23102','고소영','840615-1234567','010-4101-8406','goso@daum.com','대구');
insert into student values ('22311011',31,'p31104','김연아','651021-1234567','010-5101-6510','yuna@daum.com','대구');
insert into student (stdNo, depNo, proNo, stdName, stdJumin, stdHp, stdAddr) values ('22311014',31,'P31104', '유재석', '721128-1234567', '010-6101-7211','부산');
insert into student (stdNo, depNo, proNo, stdName, stdJumin, stdHp, stdAddr) values ('22401001',40,'P40101', '강호동', '920907-1234567', '010-7103-9209','부산');
insert into student values ('22041002',40,'p40101','조인성','891209-1234567','010-7104-8912','join@daum.com','광주');
insert into student values ('22421003',42,'p42103','강동원','770314-1234567','010-8101-7703','dong@daum.com','광주');


insert into professors values ('p10101',10,'김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
insert into professors values ('p10102',10,'계백','740610-1234567','010-1102-1975','geaback@hg.ac.kr','서울');
insert into professors values ('p11101',11,'김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
insert into professors values ('p11103',11,'김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
insert into professors values ('p11104',11,'이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
insert into professors values ('p22110',22,'장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구');
insert into professors values ('p23102',23,'선덕여왕','830614-1234567','010-4101-1984','gueen@hg.ac.kr','대구');
insert into professors values ('p31101',31,'강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
insert into professors values ('p31104',31,'신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
insert into professors values ('p40101',40,'이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
insert into professors values ('p40102',40,'이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
insert into professors values ('p42103',42,'송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주');


insert into department values (10,'국어국문학과','051-510-1010');
insert into department values (11,'영어영문학과','051-510-1011');
insert into department values (20,'경영학과','051-510-1020');
insert into department values (21,'경제학과','051-510-1021');
insert into department values (22,'정치외교학과','051-510-1022');
insert into department values (23,'사회복지학과','051-510-1023');
insert into department values (30,'수학과','051-510-1030');
insert into department values (31,'통계학과','051-510-1031');
insert into department values (32,'생명과학과','051-510-1032');
insert into department values (40,'기계공학과','051-510-1040');
insert into department values (41,'전자공학과','051-510-1041');
insert into department values (42,'컴퓨터공학과','051-510-1042');


insert into lecture values ('101001','p10101','대학 글쓰기',2,10,'본102');
insert into lecture values ('101002','p10102','한국어음운론',3,30,'본102');
insert into lecture values ('101003','p10102','한국현대문학사',3,30,'본103');
insert into lecture values ('111011','p11103','중세영문학',3,25,'본201');
insert into lecture values ('111012','p11104','영미시',3,25,'본201');
insert into lecture values ('231110','p23102','사회복지학개론',1,8,'별관103');
insert into lecture values ('311002','p31101','통계학의 이해',2,16,'별관303');
insert into lecture values ('311003','p31104','기초 통계학',3,26,'별관303');
insert into lecture values ('401019','p40101','기계역학',3,36,'공학관102');
insert into lecture values ('421012','p42103','데이터베이스',3,32,'공학관103');

insert into register (stdno,lecno,prono) values ('20101001','101001','p10101');
insert into register (stdno,lecno,prono) values ('20101001','101002','p10102');
insert into register (stdno,lecno,prono) values ('20111013','111011','p11103');
insert into register (stdno,lecno,prono) values ('21231002','231110','p23102');
insert into register (stdno,lecno,prono) values ('22401001','401019','p40101');
insert into register (stdno,lecno,prono) values ('22401001','421012','p42103');
insert into register (stdno,lecno,prono) values ('20101001','101003','p10102');
insert into register (stdno,lecno,prono) values ('22421003','311003','p31104');
insert into register (stdno,lecno,prono) values ('22421003','421012','p42103');
insert into register (stdno,lecno,prono) values ('20111013','111012','p11104');



# 문제1
select stdno, stdname, stdhp, a.depno, depname from student as a join department as b on a.depno=b.depno;

# 문제2
select prono, proname, prohp, a.depno, depname from professors as a join department as b on a.depNo = b.depNo;

# 문제3
select lecno, lecname, proname, prohp from professors as a join lecture as b on a.proNo = b.proNo;

# 문제4
select lecno, lecname, b.prono, proname, prohp, c.depno, depname from lecture as a join professors as b on a.proNo = b.proNo join department as c on b.depNo = c.depNo;

# 문제5
select stdno, stdname, lecno, lecname, b.prono, b.proname from student as a join professors as b on a.depno = b.depNo join lecture as c on b.proNo = c.proNo;

select 
	a.`stdNo`,
	b.`stdName`,
	a.`lecNo`,
	c.`lecName`,
	a.`proNo`,
	d.`proName` 
from `Register`   as a
join `Student`   as b ON a.stdNo = b.stdNo
join `Lecture`   as c ON a.lecNo = c.lecNo
join `Professors` as d ON a.proNo = d.proNo;

# 문제6
update register set regAttenScore = ceil(rand()*100), regmidscore = ceil(rand()*100), regfinalscore = ceil(rand()*100), regetcscore=ceil(rand()*100);


# 문제7
update register set regtotal = (regAttenScore+regmidscore+regfinalscore+regetcscore)/4;

# 문제8
update register set regtotal = (regAttenScore+regmidscore+regfinalscore)/3 , reggrade=if(regtotal>=90, 'A',
																					  if(regtotal>=80, 'B',
																					  if(regtotal>=70, 'C',
																				      if(regtotal>=60, 'D', 'F'))));
                                                                                                  
# 문제9                                                                                     
select * from register order by regtotal desc limit 1;

# 문제 10
select avg(regtotal) as '정우성학생 총점평균' from student as a join register as b on a.stdNo = b.stdNo where stdname = '정우성';


                                                                                                  