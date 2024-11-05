/*
    ��¥ : 2024/03/04
    �̸� : �輱��   
    ���� : 2�� SQL �⺻ �ǽ�
*/

-- �ǽ��ϱ� 1-1 ���̺� ����
CREATE TABLE USER1 (
    ID      VARCHAR2(20),
    NAME    VARCHAR2(20),
    HP      CHAR(13),
    AGE     NUMBER
);

-- �ǽ��ϱ� 1-2 ������ �߰�
INSERT INTO USER1 VALUES ('A101', '������', '010-1234-1111', 25);
INSERT INTO USER1 VALUES ('A102', '������', '010-1234-2222', 23);
INSERT INTO USER1 VALUES ('A103', '�庸��', '010-1234-3333', 32);
INSERT INTO USER1 (id, name, age) VALUES ('A104', '������', 45);
INSERT INTO USER1 (id, name, hp) VALUES ('A105', '�̼���', '010-1234-5555');

-- �ǽ��ϱ� 1-3 ������ ��ȸ
SELECT * FROM USER1;
SELECT * FROM USER1 WHERE id='A101';
SELECT * FROM USER1 WHERE name ='������';
SELECT * FROM USER1 WHERE age > 30;
SELECT id, name, age FROM USER1;

-- �ǽ��ϱ� 1-4 ������ ����
UPDATE USER1 SET hp='010-1234-4444' WHERE id='A104';
UPDATE USER1 SET age=51 WHERE id='A105';
UPDATE USER1 SET hp='010-1234-1001', age=27 WHERE id='A101';

-- �ǽ��ϱ� 1-5 ������ ����
DELETE FROM USER1 WHERE id='A101';
DELETE FROM USER1 WHERE id='a102' AND age=25;
DELETE FROM USER1 WHERE age >=30;


-- �ǽ��ϱ� 2-1 �⺻Ű �ǽ�
CREATE TABLE USER2 (
    ID      VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13),
    AGE     NUMBER(2)
);

-- �ǽ��ϱ� 2-2 ����Ű �ǽ�
CREATE TABLE USER3 (
    ID      VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR(20),
    HP      CHAR(13) UNIQUE,
    AGE     NUMBER(3)
);

-- �ǽ��ϱ� 2-3 �ܷ�Ű
CREATE TABLE PARENT (
    PID     VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13) UNIQUE
);

CREATE TABLE CHILD(
    CID     VARCHAR2(20) PRIMARY KEY,
    NAME    VARCHAR2(20),
    HP      CHAR(13) UNIQUE,
    PARENT  VARCHAR(20),
    FOREIGN KEY (PARENT) REFERENCES PARENT (PID)
);

INSERT INTO PARENT VALUES ('P101', '�輭��', '010-1234-1001');
INSERT INTO PARENT VALUES ('P102', '�̼���', '010-1234-1002');
INSERT INTO PARENT VALUES ('P103', '�Ż��Ӵ�', '010-1234-1003');

INSERT INTO CHILD VALUES ('C101', '������', '010-1234-2001', 'P101');
INSERT INTO CHILD VALUES ('C102', '�̹��', '010-1234-2002', 'P102');
INSERT INTO CHILD VALUES ('C103', '����', '010-1234-2003', 'P102');
INSERT INTO CHILD VALUES ('C104', '����', '010-1234-2004', 'P103');

-- �ǽ��ϱ� 2-4 DEFAULT�� NULL
CREATE TABLE USER4(
    NAME        VARCHAR2(20) NOT NULL,
    GENDER      CHAR(1) NOT NULL,
    AGE         INT DEFAULT 1,
    ADDR        VARCHAR2(255)
);

INSERT INTO USER4 VALUES ('������', 'M', 23, '���ؽ�');
INSERT INTO USER4 VALUES ('������', 'M', 21, '���ֽ�');
INSERT INTO USER4 (NAME, GENDER, ADDR) VALUES ('�Ż��Ӵ�', 'F', '������');
INSERT INTO USER4 (NAME, GENDER) VALUES ('�̼���', 'M');
INSERT INTO USER4 (NAME, AGE) VALUES ('�����', 33);

-- �ǽ��ϱ� 2-5 CHECK ��������
CREATE TABLE USER5(
    NAME    VARCHAR2(20) NOT NULL,
    GENDER  CHAR(1) NOT NULL, CHECK(GENDER IN('M', 'F')),
    AGE     INT DEFAULT 1 CHECK(AGE > 0 AND AGE < 100),
    ADDR    VARCHAR2(255)
);

INSERT INTO USER5 VALUES ('������', 'M', 23, '���ؽ�');
INSERT INTO USER5 VALUES ('������', 'M', 21, '���ֽ�');
INSERT INTO USER5 (NAME, GENDER, ADDR) VALUES ('�Ż��Ӵ�', 'F', '������');
INSERT INTO USER5 (NAME, GENDER) VALUES ('�̼���', 'M');
INSERT INTO USER5 (NAME, AGE) VALUES ('�����', 33);


/*
    ��¥ : 2024/03/06
    �̸� : �輱��
    ���� : 3. �����ͺ��̽� ��ü �ǽ��ϱ�
*/

--�ǽ� 3-1 ������ ���� ��ȸ(system ����)
select * from DIC;

-- ���̺� ��ȸ(���� ����� ����)
SELECT TABLE_NAME FROM USER_TABLES;

-- ��ü ���̺� ��ȸ(���� ����� ����)
SELECT OWNER, TABLE_NAME FROM ALL_TABLES;

-- ��ü ���̺� ��ȸ(system �����ڸ� ����)
SELECT * FROM DBA_TABLES;

-- ��ü ����� ��ȸ(system �����ڸ� ����)
SELECT * FROM DBA_USERS;

-- �ǽ��ϱ� 3-2 �ε��� ��ȸ/����/����

-- ���� ����� �ε��� ��ȸ
SELECT * FROM USER_INDEXES;

-- ���� ����� �ε��� ���� ��ȸ
SELECT * FROM USER_IND_COLUMNS;

-- �ε��� ����
CREATE INDEX IDX_USER1_UID ON USER1(id);
SELECT * FROM USER_IND_COLUMNS;

-- �ε��� ����
DROP INDEX IDX_USER1_UID;
SELECT * FROM USER_IND_COLUMNS;


-- �ǽ��ϱ� 3-4 �� ����/��ȸ/����

-- �� ����
CREATE VIEW VW_USER1 AS (SELECT NAME, HP, AGE FROM user1);
CREATE VIEW VW_USER2_AGE_UNDER30 AS (SELECT * FROM user2 WHERE AGE < 30);
SELECT * FROM USER_VIEWS;

-- �� ��ȸ
SELECT * FROM vw_user1;
SELECT * FROM vw_user2_age_under30;

-- �� ����
DROP VIEW VW_USER1;
DROP VIEW vw_user2_age_under30;

-- �ǽ��ϱ� 3-5 ������ ���� ���̺� ����
CREATE TABLE USER6 (
    SEQ     NUMBER PRIMARY KEY,
    NAME    VARCHAR2(20),
    GENDER  CHAR(1),
    AGE     NUMBER,
    ADDR    VARCHAR2(225)
    );
    
-- �ǽ��ϱ� 3-6 ������ ����
CREATE SEQUENCE SEQ_UESR6 INCREMENT BY 1 START WITH 1;
SELECT * FROM SEQ_UESR6;

-- �ǽ��ϱ� 3-7 �������� ����
INSERT INTO USER6 VALUES (SEQ_UESR6.NEXTVAL, '������', 'M', 25, '���ؽ�');
INSERT INTO user6 VALUES (SEQ_UESR6.NEXTVAL, '������', 'M', 23, '���ֽ�');
INSERT INTO USER6 VALUES (SEQ_UESR6.NEXTVAL, '�Ż��Ӵ�', 'F', 25, '������');

-- �ǽ��ϱ� 4-1 ����� ����
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER user1 IDENTIFIED BY abcd1234;

-- �ǽ��ϱ� 4-2 ����� ��ȸ(system ����)
SELECT * FROM ALL_USERS;

-- �ǽ��ϱ� 4-3 ����� ����(system ����)
-- ����� ��й�ȣ ����
ALTER USER user1 IDENTIFIED BY 1234;

-- ����� ����
DROP USER user1;

-- ����ڿ� �ش� ����� ��ü(���̺� ��) ��� ����
DROP USER user1 CASCADE;

-- �ǽ��ϱ� 4-4 Role �ο�
-- ���� �� ���� ���� �ο�
GRANT CONNECT, RESOURCE TO user1;

-- ���̺� �����̽�(���̺� ���� ���� ����) �Ҵ緮 ���� �ο�
GRANT UNLIMITED TABLESPACE TO user1;
