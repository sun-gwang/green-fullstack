#날짜 : 2024/01/02
#이름 : 김선광
#내용 : 1장 데이터베이스 생성과 사용자 관리alter

#실습 1-1
CREATE DATABASE `StudyDB2`;
DROP DATABASE `StudyDB2`; 
 
#실습 1-2
create user 'kc5353'@'%' identified by '1234';
grant all privileges on `StudyDB`.to 'kc5353'@'%';
flush privileges;

#실습 1-3
alter user 'kc5353'@'%' identified by 'abcd1234';
drop user 'kc5353'@'%';
flush privileges;