/*
    ��¥ : 2024/03/07
    �̸� : �輱��
    ���� : 4�� PL/SQL �ǽ��ϱ�
*/

-- �ǽ� 1-1 Hello, Oracle ���
SET SERVEROUTPUT ON;
BEGIN
    dbms_output.put_line('hello, Oracle!');
    END;
    

-- �ǽ� 1-2 �ּ� ó���ϱ�
DECLARE
    NO         NUMBER(4)        := 1001;
    NAME    VARCHAR(10)     :='ȫ�浿';
    HP         CHAR(13)             := '010-1000-1001';
    ADDR    VARCHAR(100)    :='�λ걤����';
BEGIN
    --DBMS_OUTPUT.PUT_LINE('��ȣ : ' || NO);
    DBMS_OUTPUT.PUT_LINE('�̸� : ' || NAME);
    DBMS_OUTPUT.PUT_LINE('��ȭ : ' || NAME);
    DBMS_OUTPUT.PUT_LINE('�ּ� : ' || NAME);
    END;
    
    -- �ǽ� 2-1 ���� ���� �� ������ ���
    DECLARE
        NO          CONSTANT NUMBER(4)      := 1001;
        NAME     VARCHAR2(10);
        HP          CHAR(13)    :=   '000-0000-0000';
        AGE        NUMBER(2)    DEFAULT 1;
        ADDR    VARCHAR(10)     NOT NULL := '�λ�';
    BEGIN
        NAME := '������';
        HP      := '010-1000-1001';
        DBMS_OUTPUT.PUT_LINE ('��ȣ : ' || NO);
        DBMS_OUTPUT.PUT_LINE ('�̸� : ' || NAME);
        DBMS_OUTPUT.PUT_LINE ('��ȭ : ' || HP);
        DBMS_OUTPUT.PUT_LINE ('���� : ' || AGE);
        DBMS_OUTPUT.PUT_LINE ('�ּ� : ' || ADDR);
    END;

--  2-2 �ǽ��ϱ� �� ������ ���� �ǽ�
DECLARE
    NO         DEPT.DEPTNO%TYPE;
    NAME    DEPT.DNAME%TYPE;
    ADDR    DEPT.LOC%TYPE;
BEGIN
    SELECT * 
    INTO NO, NAME, ADDR
    FROM DEPT
    WHERE DEPTNO =30;
    
    DBMS_OUTPUT.PUT_LINE('�μ���ȣ : ' || NO);
    DBMS_OUTPUT.PUT_LINE('�μ��� : ' || NO);
    DBMS_OUTPUT.PUT_LINE('�ּ� : ' || NO);
END;

-- 2-3 �ǽ��ϱ� �� ������ ���� �ǽ�
DECLARE
    -- ����
    ROW_DEPT    DEPT%ROWTYPE;
BEGIN
    -- ó��
    SELECT * INTO ROW_DEPT FROM DEPT WHERE DEPTNO = 40;
    
    -- ���
    DBMS_OUTPUT.PUT_LINE('�μ���ȣ : ' ||   ROW_DEPT.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('�μ��� : ' ||   ROW_DEPT.DNAME);
    DBMS_OUTPUT.PUT_LINE('�ּ� : ' ||   ROW_DEPT.LOC);
END;

DECLARE
    -- Record Define
    TYPE REC_DEPT IS RECORD (
    DEPTNO      NUMBER(2),
    DNAME        DEPT.DNAME%TYPE,
    LOC             DEPT.LOC%TYPE
    );
    -- Record Declare
    dept_rec REC_DEPT;
BEGIN
    -- Record Initialize
    dept_rec.deptno := 10;
    dept_rec.dname := '���ߺ�';
    dept_rec.loc        :='�λ�';
    -- Record Print
    DBMS_OUTPUT.PUT_LINE('deptno : ' || dept_rec.deptno);
    DBMS_OUTPUT.PUT_LINE('dname : ' || dept_rec.dname);
    DBMS_OUTPUT.PUT_LINE('loc : ' || dept_rec.loc);
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 2-5 ���ڵ� ����� INSERT �ǽ�
-- ���̺� ����(������ ����)
CREATE TABLE DEPT_RECORD AS SELECT * FROM DEPT WHERE 1= 0;

DECLARE
    -- Record Define
    TYPE REC_DEPT IS RECORD (
    DEPTNO      NUMBER(2),
    DNAME        DEPT.DNAME%TYPE,
    LOC             DEPT.LOC%TYPE
    );
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 10;
    dept_rec.dname := '���ߺ�';
    dept_rec.loc        :='�λ�';
    
    INSERT INTO DEPT_RECORD VALUES dept_rec;
   
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 2-6 ���ڵ带 �����ϴ� ���ڵ� �ǽ�
DECLARE
    TYPE REC_DEPT IS RECORD(
        deptno      DEPT.DEPTNO%TYPE,
        dname      DEPT.DNAME%TYPE,
        loc             DEPT.LOC%TYPE
    );
    TYPE REC_EMP IS RECORD(
    empno       EMP.EMPNO%TYPE,
    ename       EMP.ENAME%TYPE,
    dinfo           REC_DEPT
);
emp_rec REC_EMP;
BEGIN
    SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME, D.LOC
    INTO 
        emp_rec.empno,
        emp_rec.ename,
        emp_rec.dinfo.deptno,
        emp_rec.dinfo.dname,
        emp_rec.dinfo.loc
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO AND E.EMPNO = 7788;
    DBMS_OUTPUT.PUT_LINE('EMPNI : ' ||  emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' ||  emp_rec.ename);
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' ||  emp_rec.dinfo.deptno);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' ||  emp_rec.dinfo.dname);
    DBMS_OUTPUT.PUT_LINE('LOC : ' ||  emp_rec.dinfo.loc);
    
    DBMS_OUTPUT.PUT_LINE('PL / SQL ����...');
END;

-- �ǽ��ϱ� 2-7 ���̺�(�����迭) �⺻ �ǽ�
DECLARE
    TYPE ARR_CITY IS TABLE OF VARCHAR2(20) INDEX BY PLS_INTEGER;
    arrCity ARR_CITY;
BEGIN
    arrCity(1)  := '����';
    arrCity(2)  := '����';
    arrCity(3)  := '�뱸';
    
    DBMS_OUTPUT.PUT_LINE('arrCity(1) : ' || arrCity(1));
    DBMS_OUTPUT.PUT_LINE('arrCity(2) : ' || arrCity(2));
    DBMS_OUTPUT.PUT_LINE('arrCity(3) : ' || arrCity(3));
    DBMS_OUTPUT.PUT_LINE('PL/SQL ���� ...');
END;

-- �ǽ��ϱ� 3-1 IF�� �ǽ�
DECLARE
    NUM NUMBER :=1;
BEGIN
    IF NUM > 0 THEN
        DBMS_OUTPUT.PUT_LINE('NUM�� 0���� ũ��.');
    END IF;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 3-2 IF~ELSE �ǽ�
DECLARE
    NUM NUMBER := -1;
BEGIN
    IF NUM > 0 THEN
        DBMS_OUTPUT.PUT_LINE('NUM�� 0���� ũ��.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('NUM�� 0���� �۴�.');
    END IF;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 3-3 IF~ELSEIF �ǽ�
DECLARE
    SCORE NUMBER := 86;
BEGIN
    IF SCORE >= 90 AND SCORE <= 100 THEN
        DBMS_OUTPUT.PUT_LINE('A�Դϴ�.');
     ELSIF SCORE >= 70 AND SCORE <80 THEN
        DBMS_OUTPUT.PUT_LINE('B�Դϴ�.');
    ELSIF SCORE >= 70 AND SCORE <80 THEN
        DBMS_OUTPUT.PUT_LINE('C�Դϴ�.');
    ELSIF SCORE >= 60 AND SCORE < 70 THEN
        DBMS_OUTPUT.PUT_LINE('D�Դϴ�.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('F�Դϴ�.');
    END IF;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ� 3-4 CASE �ǽ�
DECLARE
    SCORE NUMBER :=86;
BEGIN
    CASE FLOOR(SCORE/10)
        WHEN 9 THEN DBMS_OUTPUT.PUT_LINE('A�Դϴ�.');
        WHEN 8 THEN DBMS_OUTPUT.PUT_LINE('B�Դϴ�.');
        WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('C�Դϴ�.');
        WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('D�Դϴ�.');
        ELSE DBMS_OUTPUT.PUT_LINE('F �Դϴ�.');
    END CASE;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 3-5 �⺻ LOOP �ǽ�
DECLARE
    NUM NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('NUM: ' || NUM);
        NUM := NUM+1;
        
        IF NUM > 3 THEN
            EXIT;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 3-6 �⺻ FOR �ǽ�
DECLARE
    NUM NUMBER :=0;
BEGIN
    FOR i IN 1..3 LOOP
        DBMS_OUTPUT.PUT_LINE('i : ' || i);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- 3-6 �⺻ FOR �ǽ�
BEGIN
    FOR i IN 1..3 LOOP
        DBMS_OUTPUT.PUT_LINE('i : ' || i);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 3-7 �⺻ WHILE �ǽ�
DECLARE
    NUM NUMBER := 0;
BEGIN
    WHILE NUM < 4 LOOP
        DBMS_OUTPUT.PUT_LINE('NUM : ' || NUM);
        NUM := NUM+1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 3-8 CONTINUE �ǽ�
DECLARE
    NUM NUMBER :=0;
BEGIN
    WHILE NUM < 5 LOOP
        NUM := NUM +1;
        
        -- MOD(): �������� ���ϴ� SQL �Լ�
        IF MOD(NUM,2) = 0 THEN
            CONTINUE;
        END IF;
        DBMS_OUTPUT.PUT_LINE('NUM : ' || NUM);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 3-9 CONTINUE-WHEN �ǽ�
BEGIN
    FOR i IN 1..5 LOOP
        CONTINUE WHEN MOD(i, 2) = 0;
        DBMS_OUTPUT.PUT_LINE('i : ' || i);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('PL/SQL ����...');
END;

-- �ǽ��ϱ� 4-1 ���� �� ����� ó���ϴ� Ŀ�� ���
DECLARE
    -- Ŀ�� �����͸� ������ ���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- Ŀ�� ����
    CURSOR c1 IS SELECT * FROM DEPT WHERE DEPTNO = 40;
BEGIN
    -- Ŀ�� ����
    OPEN c1;
    
    -- Ŀ�� ������ �Է�
    FETCH c1 INTO V_DEPT_ROW;
    
    -- Ŀ�� ������ ���
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT_ROW.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT_ROW.LOC);
    
    -- Ŀ�� ����
    CLOSE c1;
END;

-- �ǽ� 4-2 ���� �� ����� ó���ϴ� Ŀ�� ��� (LOOP)
DECLARE
    V_DEPT_ROW DEPT%ROWTYPE;
    CURSOR c1 IS SELECT * FROM DEPT;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO V_DEPT_ROW;
        EXIT WHEN c1%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('-------------------------');
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO);
        DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT_ROW.DNAME);
        DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    
    CLOSE c1;
END;