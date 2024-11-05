#날짜 : 2024/02/05
#이름 : 김선광
#내용 : 게시판 프로젝트 데이터베이스 설계

CREATE DATABASE `Myjboard`;
USE `Myjboard`;

GRANT ALL PRIVILEGES ON `Myjboard`.* TO 'kc5353'@'%';
FLUSH PRIVILEGES;

CREATE TABLE `User`(
	`uid`			VARCHAR(20) PRIMARY KEY,
	`pass`		VARCHAR(225)NOT NULL,	
	`name`		VARCHAR(20)	NOT NULL,
	`nick`		VARCHAR(20) UNIQUE NOT NULL,
	`email`		VARCHAR(30) UNIQUE NOT NULL,
	`hp`			CHAR(13)		UNIQUE NOT NULL,
	`role`		VARCHAR(20) DEFAULT 'USER',
	`zip`			CHAR(5),
	`addr1`		VARCHAR(100),
	`addr2`		VARCHAR(100),
	`regip`		VARCHAR(50),
	`rdate`		DATETIME 	NOT NULL,
	`leaveDate`	DATETIME
	
);

CREATE TABLE `Article`(
	`no`		 INT	PRIMARY KEY AUTO_INCREMENT,
	`parent`	 INT	DEFAULT 0,
	`coment`	 INT	DEFAULT 0,
	`cate`	 VARCHAR(20)	DEFAULT 'free',
	`title`	 VARCHAR(100),
	`content` TEXT		NOT NULL,
	`file`	 TINYINT	DEFAULT 0,
	`hit`		 INT DEFAULT 0,
	`writer`	 VARCHAR(20) NOT NULL,
	`regip`	 VARCHAR(20) NOT NULL,
	`rdate`	 DATETIME	 NOT NULL,
	FOREIGN KEY(`writer`) REFERENCES `User` (`uid`)
);


CREATE TABLE `Terms`(
	`terms`	 TEXT,
	`privacy` TEXT,
	`
);

CREATE TABLE `File` (
	`fno`			INT AUTO_INCREMENT PRIMARY KEY,
	`ano`			INT NOT NULL,
	`oName`		VARCHAR(100) NOT NULL,
	`sName`		VARCHAR(100) NOT NULL,
	`download`	INT DEFAULT 0,
	`rdate`		DATETIME  NOT NULL,
	FOREIGN KEY(`ano`) REFERENCES `Article` (`no`)	
);

SELECT a.*,b.nick FROM `Article` AS a
JOIN `User` AS b ON a.writer=b.uid 
ORDER BY `no` DESC
LIMIT 10,10;

INSERT INTO `Article` (`title`,`content`,`writer`,`regip`,`rdate`)
SELECT `title`,`content`,`writer`,`regip`,`rdate` FROM `Article`;

DELETE FROM `Article` WHERE `no`>5;
ALTER TABLE `Article` AUTO_INCREMENT = 1; 

SELECT COUNT(*) FROM `Article` WHERE `parent`=0;

UPDATE `Article` SET `hit`=`hit` +1 WHERE `no`=1;

INSERT INTO `article` SET 
`title`=?, 
content=?, 
writer=?, 
regip=?, 
rdate=NOW() ;

SELECT a.*, b.nick FROM `Article` AS a 
JOIN `User` AS b ON a.writer = b.uid
WHERE `parent`=3 ORDER BY `no` ASC; 

DROP TABLE `Ariticle`;
DROP TABLE user;

ALTER TABLE `user` ADD COLUMN agree1 BOOLEAN AFTER `rgip`;
ALTER TABLE `user` ADD COLUMN agree2 BOOLEAN AFTER `agree1`;

ALTER TABLE `user` ADD COLUMN `sms` CHAR(1) AFTER `rgip`;

ALTER TABLE `user` DROP COLUMN `agree1`;
ALTER TABLE `user` DROP COLUMN `agree2`;
ALTER TABLE `terms` ADD COLUMN `sms` TEXT AFTER `privacy`;
SELECT * FROM `Article` WHERE `title` LIKE '%사과%';

SELECT COUNT(*) FROM `Article` WHERE `parent`=0;

SELECT COUNT(*) FROM `User` WHERE `uid`=?;