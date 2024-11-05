# 날짜 : 24/01/16
# 이름 : 김선광
# 내용 : 데이터베이스 모델링 실습

insert into department values ('101','소아과', '김유신', '051-123-0101');
insert into department values ('102','내과', '김춘추', '051-123-0102');
insert into department values ('103','외과', '장보고', '051-123-0103');
insert into department values ('104','피부과', '선덕여왕', '051-123-0104');
insert into department values ('105','이비인후과', '강감찬', '051-123-0105');
insert into department values ('106','산부인과', '신사임당', '051-123-0106');
insert into department values ('107','흉부외과', '류성룡', '051-123-0107');
insert into department values ('108','정형외과', '송상현', '051-123-0108');
insert into department values ('109','신경외과', '이순신', '051-123-0109');
insert into department values ('110','비뇨기과', '정약용', '051-123-0110');
insert into department values ('111','안과', '박지원', '051-123-0111');
insert into department values ('112','치과', '전봉준', '051-123-0112');
drop table department;

insert into doctors values('D101101','101', '김유신', '1976-01-21','M','과장','010-1101-1976','kimys@bw.com');
insert into doctors values('D101102','101', '계백', '1975-06-11','M','전문의','010-1101-1975','geaback@bw.com');
insert into doctors values('D101103','101', '김관창', '1989-05-30','M','전문의','010-1103-1989','kwanch@bw.com');
insert into doctors values('D102101','102', '김춘추', '1979-04-13','M','과장','010-2101-1979','kimcc@bw.com');
insert into doctors values('D102104','102', '이사부', '1966-09-12','M','전문의','010-2104-1966','leesabu@bw.com');
insert into doctors values('D103101','103', '장보고', '1979-07-28','M','과장','010-3101-1979','jangbg@bw.com');
insert into doctors values('D104101','104', '선덕여왕', '1984-06-15','F','과장','010-4101-1984','gueen@bw.com');
insert into doctors values('D105101','105','강감찬', '1965-10-21','M','과장','010-5101-1965','kang@bw.com');
insert into doctors values('D106101','106','신사임당', '1972-11-28','F','과장','010-6101-1972','sinsa@bw.com');
insert into doctors values('D107101','107','이이', '1992-09-07','M','전문의','010-7103-1992','leelee@bw.com');
insert into doctors values('D107104','107','이황', '1989-12-09','M','전문의','010-7104-1989','hwang@bw.com');
insert into doctors values('D108101','108', '송상현', '1977-03-14','M','과장','010-8101-1977','ssh@bw.com');
drop table doctors;

insert into patients (pat_id, doc_id, nur_id, pat_name, pat_jumin, pat_gen, pat_addr, pat_phone, pat_job) values ('P102101','D102101','N102101','정우성','760121-1234567','M','서울','010-1101-7601','배우');
insert into patients (pat_id, doc_id, nur_id, pat_name, pat_jumin, pat_gen, pat_addr, pat_phone, pat_job) values ('P103101','D103101','N103101','이정재','750611-1234567','M','서울','010-1102-7506','배우');
insert into patients values('P102102','D102104','N102103','전지현', '890530-1234567','F','대전', '010-1103-8905','jhh@naver.com','자영업');
insert into patients values('P104101','D104101','N104101','이나영', '790413-1234567','F','대전', '010-2101-7904','lee@naver.com','회사원');
insert into patients values('P105101','D105101','N105101','원빈', '660912-1234567','M','대전', '010-2104-6609','one@daum.com','배우');
insert into patients values('P103102','D103101','N103101','장동건', '790728-1234567','M','대구', '010-3101-7907','jang@naver.com','배우');
insert into patients values('P104102','D104101','N104101','고소영', '840615-1234567','F','대구', '010-4101-8406','goso@daum.com','회사원');
insert into patients values('P108101','D108101','N108101','김연아', '651021-1234567','F','대구', '010-5101-6510','yuna@daum.com','운동선수');
insert into patients (pat_id, doc_id, nur_id, pat_name, pat_jumin, pat_gen, pat_addr, pat_phone, pat_job) values ('P102103','D102104','N102102','유재석','721128-1234567','M','부산','010-6101-7211','개그맨');
insert into patients (pat_id, doc_id, nur_id, pat_name, pat_jumin, pat_gen, pat_addr, pat_phone, pat_job) values ('P107101','D107104','N107101','강호동','920907-1234567','M','부산','010-7103-9209','개그맨');
insert into patients values('P105102','D105101','N105101','조인성', '891209-1234567','M','광주', '010-7104-8912','join@gmail.com','배우');
insert into patients values('P104103','D104101','N104101','강동원', '770314-1234567','M','광주', '010-8101-7703','dong@daum.com','배우');
drop table patients;
delete from patients where pat_name = '김연아'; 

insert into nurses values ('N101101','101','송승헌','1976-02-21','M','수간호사','010-1101-7602','ssh@bW.com');
insert into nurses values ('N102101','102','이영애','1975-07-11','F','수간호사','010-1102-7507','yung@bW.com');
insert into nurses values ('N102102','102','엄정화','1989-06-30','F','주임','010-1103-8906','um@bW.com');
insert into nurses values ('N102103','102','박명수','1979-05-13','M','주임','010-2101-7905','park@bW.com');
insert into nurses values ('N103101','103','정준하','1966-10-12','M','주임','010-2104-6610','jung@bW.com');
insert into nurses values ('N104101','104','김태희','1979-08-28','F','주임','010-3101-7908','taeh@bW.com');
insert into nurses values ('N105101','105','송혜교','1984-07-15','F','주임','010-4101-8407','song@bW.com');
insert into nurses values ('N106101','106','공유','1965-11-21','M','간호사','010-5101-6511','gong@bW.com');
insert into nurses values ('N107101','107','이병헌','1972-12-28','M','간호사','010-6101-7212','byung@bW.com');
insert into nurses values ('N108101','108','송중기','1992-10-07','M','간호사','010-7103-9210','jungi@bW.com');
drop table nurses;

insert into treatments values (1021001,'D102101','P102101','감기, 몸살',now());
insert into treatments values (1031002,'D103101','P103101','교통사고 외상',now());
insert into treatments values (1021003,'D102104','P102102','위염, 장염',now());
insert into treatments values (1041004,'D104101','P104101','피부 트러블',now());
insert into treatments values (1051005,'D105101','P105101','코막힘 및 비염',now());
insert into treatments values (1031006,'D103101','P103102','목디스크',now());
insert into treatments values (1041007,'D104101','P104102','여드름',now());
insert into treatments values (1081008,'D108101','P108101','오른쪽 발목 뼈 골절',now());
insert into treatments values (1021009,'D102104','P102103','소화불량',now());
insert into treatments values (1071010,'D107104','P107101','가슴통증',now());
insert into treatments values (1051011,'D105101','P105102','귀 이명',now());
insert into treatments values (1041012,'D104101','P104103','발목 화상',now());

insert into charts values ('C1021001','1021001','D102101','P102101','감기 주사 및 약 처방');
insert into charts values ('C1031002','1031002','D103101','P103101','입원 치료');
insert into charts values ('C1021003','1021003','D102104','P102102','위내시경');
insert into charts values ('C1041004','1041004','D104101','P104101','피부 감염 방지 주사');
insert into charts values ('C1051005','1051005','D105101','P105101','비염 치료');
insert into charts values ('C1031006','1031006','D103101','P103102','목 견인치료');
insert into charts values ('C1041007','1041007','D104101','P104102','여드름 치료약 처방');
insert into charts values ('C1081008','1081008','D108101','P108101','발목 깁스');
insert into charts values ('C1021009','1021009','D102104','P102103','주사 처방');
insert into charts values ('C1071010','1071010','D107104','P107101','MRI 검사');
insert into charts values ('C1051011','1051011','D105101','P105102','귀 청소 및 약 처방');
insert into charts values ('C1041012','1041012','D104101','P104103','화상 크림약 처방');
SELECT * FROM hospital.doctors;
SELECT * FROM hospital.nurses;
SELECT * FROM hospital.patients;
SELECT * FROM hospital.treatments;

# 문제 1
select doc_id, doc_name, doc_birth, a.dep_no, dep_name from doctors as a join department as b on a.doc_name=b.dep_manager;


# 문제 2
select nur_id, nur_name, nur_birth, b.dep_no, b.doc_name from nurses as a join doctors as b on a.dep_no = b.dep_no;

# 문제 3
select pat_id, pat_name, pat_jumin, pat_phone, doc_name, nur_name from patients as a join doctors as b on a.doc_id = b.doc_id join nurses as c on b.dep_no = c.dep_no;

# 문제 4
select pat_name, doc_name, treat_contents, chart_contents, treat_datetime from treatments as a join doctors as b on a.doc_id = b.doc_id
                                                                                               join patients as c on a.pat_id = c.pat_id
                                                                                               join charts as d on a.treat_no = d.treat_no;
                                                                                             
																							
                                                                                        

# 문제 5
select a.treat_no, c.pat_name, doc_name, treat_contents, chart_contents, treat_datetime from treatments as a join doctors as b on a.doc_id = b.doc_id
                                                                                               join patients as c on a.pat_id = c.pat_id
                                                                                               join charts as d on a.treat_no = d.treat_no where dep_no=103; 
                                                                                                                        
# 문제 6 
select a.treat_no, pat_name, doc_name, treat_contents, chart_contents, treat_datetime from treatments as a join doctors as b on a.doc_id = b.doc_id
                                                                                               join patients as c on a.pat_id = c.pat_id
                                                                                               join charts as d on a.treat_no = d.treat_no where a.treat_contents like '%화상%'; 
# 문제 7
select * from (select *, year(now()) - concat(19, substring(pat_jumin,1,2)) as age from patients) as a where age>=30 and age<40;

select * from patients where year(now()) - concat(19, substring(pat_jumin,1,2)) between 30 and 40;

# 문제 8
select dep_manager, dep_name from department as a left join doctors as b on a.dep_no = b.dep_no where doc_id is null;

# 문제 9
select group_concat(pat_name separator '^') as '환자' from nurses as a join patients as b on a.nur_id = b.nur_id where nur_name = '김태희';

# 문제 10
select a. nur_id, a.nur_name, count(*) as `환자 수` from nurses as a join patients as b on a.nur_id = b.nur_id group by a.nur_id order by `환자 수`desc limit 1;