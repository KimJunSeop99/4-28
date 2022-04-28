-- 검색(R)
-- * : ALL COLUMN ( DEPTNO, DNAME, LOC ) 
--SELECT * FROM DEPT;
SELECT DEPTNO, DNAME, LOC FROM DEPT;
-- 한 컬럼만 보기 ( DEPTNO )
SELECT DEPTNO FROM DEPT;
-- 컬럼 하나 보기 ( DNAME )
SELECT DNAME FROM DEPT;
-- 컬럼 하나 보기 ( LOC )
SELECT LOC FROM DEPT;

-- 조건에 맞는 데이터 가져오기
-- WHERE [조건절] : 조건 문법 // WHERE 컬럼 = '데이터값';
-- DEPT 테이블에 DNAME(부서이름) 이 'SALES'인 데이터를 가져오세요.
SELECT DNAME FROM dept WHERE DNAME = 'SALES';
-- DEPT 테이블에 DEPTNO 가 10인 데이터를 컬럼이(DEPTNO) 가져오세요.
SELECT DEPTNO FROM DEPT WHERE DEPTNO = 10;

-- WHERE [조건컬럼] LIKE 'S%'
-- 조건 컬럼에 S로 시작되는 문자열을 모두 가져오기.
SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%';

-- EMP 테이블에서 JOB에 M으로 시작하는 문자열을 가진 데이터 모두 가져오기.
-- SELECT 들어가는 컬럼의 위치에 따라 데이터 출력 순서가 바뀜
SELECT JOB, ENAME FROM EMP WHERE JOB LIKE 'M%';

-- 내장함수 UPPER(문자열) : 대문자바꾸기
-- 내장함수 LOWER(문자열) : 소문자바꾸기  
-- DB 테이블 데이터는 대소문자를 별개의 문자열로 인식함.
-- UPPER(); : 안에있는 문자열을 대문자로 변경
SELECT * FROM EMP WHERE JOB = UPPER('manager');

-- 정렬 : 오름차순 ORDER BY [컬럼명] ASC;
-- SELECT문 끝에 ORDER BY [컬럼명] ASC;
-- DNAME(부서명)을 오름차순으로 정렬해 주세요
SELECT * FROM DEPT ORDER BY DNAME ASC;

-- 정렬 : 내림차순 ORDER BY [컬럼명] DESC
-- SELECT문 끝에 ORDER BY [컬럼명] DESC;
SELECT * FROM DEPT ORDER BY DNAME DESC;

-- EMP 테이블에서 JOB이 'MANAGER' 데이터를 뽑아서
-- ENAME(직원이름) 대상으로 오름차순 정렬.
SELECT * FROM EMP WHERE JOB LIKE 'MANAGER' ORDER BY ENAME ASC;

-- 문제4 ) EMP 테이블에서 JOB이 'CLERK' 데이터를 뽑아서
-- ENAME(직원이름) 대상으로 내림차순 정렬.
SELECT * FROM EMP 
WHERE JOB LIKE 'CLERK' 
ORDER BY ENAME DESC;

-- 도전과제
-- EMP 테이블에서 JOB이 'CLERK' 데이터중
-- ENAME(직원이름) , EMPNO(직원번호) 대상으로 내림차순 정렬
-- 복수정렬은 각각의 컬럼에 대해 DESC/ASC 걸어주어야함 ASC(오름차순) 생략가능
SELECT * FROM EMP WHERE JOB LIKE 'CLERK' 
ORDER BY ENAME DESC, EMPNO ASC;

