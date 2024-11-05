CREATE TABLE `fileTest` (

	`fno` INT AUTO_INCREMENT PRIMARY KEY,
	`title` VARCHAR(100),
	`oName` VARCHAR(100),
	`sName` VARCHAR(100),
	`rdate` DATETIME
	
);
/*`file` BLOB -> 데이터베이스에 직접 파일 저장(성능에는 좋지 않음)