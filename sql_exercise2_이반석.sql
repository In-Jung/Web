/**********************************************************
*	SQL Query & Function Example2
**********************************************************/
/**
-- Employees Table Columns
-- EMPLOYEE_ID
-- FIRST_NAME
-- LAST_NAME
-- EMAIL
-- PHONE_NUMBER
-- HIRE_DATE
-- JOB_ID
-- SALARY
-- COMMISSION_PCT
-- MANAGER_ID
-- DEPARTMENT_ID
**/

/**
--Departments Table Columns
--DEPARTMENT_ID
--DEPARTMENT_NAME
--MANAGER_ID
--LOCATION_ID
**/

/**
50번 부서 월급의 평균ㅡ 최고, 최저, 인원수를 구하여 출력하라
**/


SELECT MAX(e.SALARY) max, Min(e.SALARY) min, AVG(e.SALARY) avg, COUNT(e.SALARY) count 
FROM EMPLOYEES e
WHERE e.DEPARTMENT_ID =50; 




/**
각 부서별 급여의 평균, 최고, 최저, 인원수를 구하여 출력하라.
**/






/**
각 부서별 같은 업무를 하는 사람의 인원수를 구하여 부서번호, 업무명, 인원수를 출력하라.
**/
SELECT e.DEPARTMENT_ID AS "부서번호", e.JOB_ID AS "업무명", COUNT(*) AS "인원수"
FROM EMPLOYEES e
GROUP BY e.DEPARTMENT_ID, e.JOB_ID;





/**
같은 업무를 하는 사람의 수가 4명 이상인 업무와 인원수를 출력하라.
**/



SELECT  e.JOB_ID AS "업무명", COUNT(*) AS "인원수"
FROM EMPLOYEES e
GROUP BY e.JOB_ID HAVING COUNT(*)>=4 ;



/**
각 부서별 평균월급, 전체월급, 최고월급, 최저월급,을 구하여 평균월급이 많은순으로 출력하라.
**/


/**
 부서번호, 부서명, 이름, 급여를 출력하라.
**/

SELECT e.DEPARTMENT_ID AS "부서번호", d.DEPARTMENT_NAME AS "부서명", e.FIRST_NAME AS "이름", e.SALARY AS "급여"
FROM EMPLOYEES e, DEPARTMENTS d ;


/**
이름이 adam인 사원의 부서명을 출력하라.
**/
SELECT e.FIRST_NAME AS "이름", d.DEPARTMENT_NAME AS "부서명"
FROM EMPLOYEES e, DEPARTMENTS d 
WHERE e.FIRST_NAME = 'Adam';



/**
employees테이블에 있는 employee_id와 manager_id를 이용하여 서로의 관계를 다음과 같이 출력하라
'smith'의 매니저는 'ford'이다.
**/



/**
adam의 직무와 같은 직무를 갖는 사람의 이름, 부서명, 급여, 직무를 출력하라.
**/

??Adam이 많아 특정할 수 없음 

/**
전체 사원의 평균 임금보다 많은 사원의 사원번호, 이름, 부서명, 입사일, 지역, 급여를 출력하라.
**/


/**
50번 부서사람들 중에서 30번 부서의 사원과 같은 업무를 하는 사원의 사원번호, 이름, 부서명, 입사일을 출력하라.
**/



/**
급여가 30번 부서의 최고 급여보다 높은 사원의 사원번호, 이름, 급여를 출력하라.
**/