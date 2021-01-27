/*

    <select>
    �����͸� ��ȸ�ϰų� �˻��� �� ���Ǵ� ��ɾ�
    
    * Result Set : Select ������ ���� ��ȸ�� �������� ������� ����
                    ��, ��ȸ�� ����� ������ �ǹ�
    * ǥ����
    SELECT��ȸ�ϰ��� �ϴ� �÷�, �÷�, �÷�, ...
    FROM ���̺��;

*/

-- EMPLOYEE ���̺��� ��ü ������� ��� �÷�(*) ��ȸ  -> *�� ������ �ǹ���.
SELECT * FROM EMPLOYEE;

-- EMPLOYEE ���̺��� ��ü ������� ���, �̸�, �޿� �÷����� ��ȸ
SELECT EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE;



-----------------------�ǽ�����-----------------------
--1. JOB���̺��� ��� �÷� ��ȸ
SELECT * FROM JOB;

--2. JOB���̺��� ���޸� �÷��� ��ȸ
SELECT JOB_NAME FROM JOB;

--3. DEPARTMENT ���̺��� ��� �÷� ��ȸ
SELECT * FROM DEPARTMENT;

--4. EMPLOYEE ���̺��� ������, �̸���, ��ȭ��ȣ, �Ի��� �÷��� ��ȸ
SELECT EMP_NAME, EMAIL, PHONE, HIRE_DATE FROM EMPLOYEE;

--5. EMPLOYEE ���̺��� �Ի��� ������ �޿� �÷��� ��ȸ
SELECT HIRE_DATE, EMP_NAME, SALARY FROM EMPLOYEE;

/*
    <�÷����� ���� �������>
    - ��ȸ�ϰ��� �ϴ� �÷����� �����ϴ� SELECT���� �������(+-/*)�� ����ؼ� ����� ��ȸ�� �� �ִ�.
    
*/

-- EMPLOYEE ���̺�κ��� ������, ����, ����(����*12)
SELECT EMP_NAME, SALARY, SALARY*12
FROM EMPLOYEE;

-- EMPLOYEE ���̺�κ��� ������, ����, ���ʽ�, ���ʽ������Եȿ���(����+���ʽ�*����)*12
SELECT EMP_NAME, SALARY, BONUS, (SALARY+BONUS*SALARY)*12
FROM EMPLOYEE;
--> ��������ϴ� ������ NULL���� ������ ��� ������� ��������� NULL������ ��ȸ�ȴ�.

-- EMPLOYEE ���̺�κ��� ������, �Ի���, �ٹ��ϼ�(���ó�¥ -�Ի���) ��ȸ
-- DATEŸ�Գ����� ���� ���� (DATE -> ��, ��, ��, ��, ��, ��)
-- ���ó�¥ : SYSDATE
SELECT EMP_NAME, HIRE_DATE, SYSDATE-HIRE_DATE
FROM EMPLOYEE;
-- ���� �������� ������ DATEŸ�Ծȿ� ���ԵǾ��ִ� ��/��/�ʿ� ���� ������� �����ϱ� �����̴�.

/*
    <�÷��� ��Ī �����ϱ�>
    
    [ǥ����]
    1. �÷��� AS��Ī, 2. �÷��� AS "��Ī", 3. �÷��� ��Ī, 4. �÷��� "��Ī"
    
    AS�� ���̵� �Ⱥ��̵�
    ��Ī�� Ư�����ڳ� ���Ⱑ ���Ե� ��� �ݵ�� "" �� ��� ǥ���ؾߵ�
    
*/

SELECT EMP_NAME AS �̸�, SALARY AS "�޿� (��)", BONUS ���ʽ�, (SALARY+BONUS*SALARY)*12 "�� �ҵ�"
FROM EMPLOYEE;
