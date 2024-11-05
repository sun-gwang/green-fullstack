/*
    ��¥ : 2024/03/04
    �̸� : �輱��
    ���� : 1�� �����ͺ��̽��� DBMS ����
*/

-- �ǽ��ϱ� 1-1 �����ͺ��̽� ����� ����
-- NUMBER(p, s) p�� �ִ� ��ȿ���� �ڸ���, s�� �Ҽ��� �ڸ���
-- NUMBER(6,2) 12345.6 -> ���� ��? => �� 6�ڸ� ��, �Ǽ� �κ��� 2�ڸ�(������ 4�ڸ�) 12345.6�� ���κκ��� 5�ڸ�
ALTER SESSION SET "_ORACLE_SCRIPT"=true;
CREATE USER kc5353 IDENTIFIED BY "1234";
GRANT CONNECT, RESOURCE TO kc5353;
GRANT UNLIMITED TABLESPACE TO kc5335;

-- �ǽ��ϱ� 1-2 NUMBER �ڷ��� ����
CREATE TABLE TYPE_TEST_NUMBER (
    num1 NUMBER,
    num2 NUMBER(2),
    num3 NUMBER(3,1),
    num4 NUMBER(4,2),
    num5 NUMBER(5,6)
    );
    
    // num1 NUMBER
    insert into TYPE_TEST_NUMBER (num1) values(1);
    INSERT INTO TYPE_TEST_NUMBER (num1) values(123);
    INSERT INTO TYPE_TEST_NUMBER (num1) VALUES(123.74);
    INSERT INTO TYPE_TEST_NUMBER (num1) VALUES(123.12345);
    
    // num2 NUMBER(2)
    INSERT INTO TYPE_TEST_NUMBER (num2) VALUES (12);
    INSERT INTO TYPE_TEST_NUMBER (num2) VALUES (123);
    INSERT INTO TYPE_TEST_NUMBER (num2) VALUES (1.2);
    INSERT INTO TYPE_TEST_NUMBER (num2) VALUES (1.23);
    INSERT INTO TYPE_TEST_NUMBER (num2) VALUES (12.34567);
    INSERT INTO TYPE_TEST_NUMBER (num2) VALUES (12.56789);
    INSERT INTO TYPE_TEST_NUMBER (num2) VALUES (123.56789);
    
    // num3 NUMBER(3,1)
    INSERT INTO TYPE_TEST_NUMBER (num3) VALUES (12);
    INSERT INTO TYPE_TEST_NUMBER (num3) VALUES (123);
    INSERT INTO TYPE_TEST_NUMBER (num3) VALUES (12.1);
    INSERT INTO TYPE_TEST_NUMBER (num3) VALUES (12.1234);
    INSERT INTO TYPE_TEST_NUMBER (num3) VALUES (12.56789);
    INSERT INTO TYPE_TEST_NUMBER (num3) VALUES (123.56789);
    
    -- �ǽ��ϱ� 1-3. ������ �ڷ��� ����
    -- VARCHAR2 �ڷ����� ����, ���ڴ� 1Byte ũ��, �ѱ��� 3Byteũ��
    -- NVARCHAR2 �ڷ����� ����/����/�ѱ�(UTF-8) 1Byteũ��
    
    -- CHAR(s) ���� ���� ���ڿ� ������, 1byte ~ 4000byte
    -- VARCHAR2 �������� ���ڿ� ������, 1byte ~ 4000byte
    -- NVARCHAR2(s) �������� ������ ���ڿ� ������, 1byte ~ 4000byte
    
    CREATE TABLE TYPE_TEST_CHAR(
        char1 CHAR(1),
        char2 CHAR(2),
        char3 CHAR(3),
        vchar1 VARCHAR(1),
        vchar2 VARCHAR(2),
        vchar3 VARCHAR(3),
        nvchar1 NVARCHAR2(1),
        nvchar2 NVARCHAR2(2),
        nvchar3 NVARCHAR2(3)
);

// CHAR
INSERT INTO TYPE_TEST_CHAR (char1) values ('A');
INSERT INTO TYPE_TEST_CHAR (char1) VALUES ('��');
INSERT INTO type_test_char (char2) VALUES ('��');

//VARCHAR2
INSERT INTO TYPE_TEST_CHAR (vchar1) VALUES ('A');
INSERT INTO TYPE_TEST_CHAR (vchar2) VALUES ('AB');
INSERT INTO TYPE_TEST_CHAR (vchar3) VALUES ('��');
INSERT INTO TYPE_TEST_CHAR (vchar3) VALUES ('����');

//NVARCHAR2
INSERT INTO TYPE_TEST_CHAR (nvchar1) VALUES ('A');
INSERT INTO TYPE_TEST_CHAR (nvchar2) VALUES ('AB');
INSERT INTO TYPE_TEST_CHAR (nvchar3) VALUES ('������');
    