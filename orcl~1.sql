-- �˻�(R)
-- * : ALL COLUMN ( DEPTNO, DNAME, LOC ) 
--SELECT * FROM DEPT;
SELECT DEPTNO, DNAME, LOC FROM DEPT;
-- �� �÷��� ���� ( DEPTNO )
SELECT DEPTNO FROM DEPT;
-- �÷� �ϳ� ���� ( DNAME )
SELECT DNAME FROM DEPT;
-- �÷� �ϳ� ���� ( LOC )
SELECT LOC FROM DEPT;

-- ���ǿ� �´� ������ ��������
-- WHERE [������] : ���� ���� // WHERE �÷� = '�����Ͱ�';
-- DEPT ���̺� DNAME(�μ��̸�) �� 'SALES'�� �����͸� ����������.
SELECT DNAME FROM dept WHERE DNAME = 'SALES';
-- DEPT ���̺� DEPTNO �� 10�� �����͸� �÷���(DEPTNO) ����������.
SELECT DEPTNO FROM DEPT WHERE DEPTNO = 10;

-- WHERE [�����÷�] LIKE 'S%'
-- ���� �÷��� S�� ���۵Ǵ� ���ڿ��� ��� ��������.
SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%';

-- EMP ���̺��� JOB�� M���� �����ϴ� ���ڿ��� ���� ������ ��� ��������.
-- SELECT ���� �÷��� ��ġ�� ���� ������ ��� ������ �ٲ�
SELECT JOB, ENAME FROM EMP WHERE JOB LIKE 'M%';

-- �����Լ� UPPER(���ڿ�) : �빮�ڹٲٱ�
-- �����Լ� LOWER(���ڿ�) : �ҹ��ڹٲٱ�  
-- DB ���̺� �����ʹ� ��ҹ��ڸ� ������ ���ڿ��� �ν���.
-- UPPER(); : �ȿ��ִ� ���ڿ��� �빮�ڷ� ����
SELECT * FROM EMP WHERE JOB = UPPER('manager');

-- ���� : �������� ORDER BY [�÷���] ASC;
-- SELECT�� ���� ORDER BY [�÷���] ASC;
-- DNAME(�μ���)�� ������������ ������ �ּ���
SELECT * FROM DEPT ORDER BY DNAME ASC;

-- ���� : �������� ORDER BY [�÷���] DESC
-- SELECT�� ���� ORDER BY [�÷���] DESC;
SELECT * FROM DEPT ORDER BY DNAME DESC;

-- EMP ���̺��� JOB�� 'MANAGER' �����͸� �̾Ƽ�
-- ENAME(�����̸�) ������� �������� ����.
SELECT * FROM EMP WHERE JOB LIKE 'MANAGER' ORDER BY ENAME ASC;

-- ����4 ) EMP ���̺��� JOB�� 'CLERK' �����͸� �̾Ƽ�
-- ENAME(�����̸�) ������� �������� ����.
SELECT * FROM EMP 
WHERE JOB LIKE 'CLERK' 
ORDER BY ENAME DESC;

-- ��������
-- EMP ���̺��� JOB�� 'CLERK' ��������
-- ENAME(�����̸�) , EMPNO(������ȣ) ������� �������� ����
-- ���������� ������ �÷��� ���� DESC/ASC �ɾ��־���� ASC(��������) ��������
SELECT * FROM EMP WHERE JOB LIKE 'CLERK' 
ORDER BY ENAME DESC, EMPNO ASC;

