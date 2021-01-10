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
50�� �μ� ������ ��դ� �ְ�, ����, �ο����� ���Ͽ� ����϶�
**/


SELECT MAX(e.SALARY) max, Min(e.SALARY) min, AVG(e.SALARY) avg, COUNT(e.SALARY) count 
FROM EMPLOYEES e
WHERE e.DEPARTMENT_ID =50; 




/**
�� �μ��� �޿��� ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.
**/






/**
�� �μ��� ���� ������ �ϴ� ����� �ο����� ���Ͽ� �μ���ȣ, ������, �ο����� ����϶�.
**/
SELECT e.DEPARTMENT_ID AS "�μ���ȣ", e.JOB_ID AS "������", COUNT(*) AS "�ο���"
FROM EMPLOYEES e
GROUP BY e.DEPARTMENT_ID, e.JOB_ID;





/**
���� ������ �ϴ� ����� ���� 4�� �̻��� ������ �ο����� ����϶�.
**/



SELECT  e.JOB_ID AS "������", COUNT(*) AS "�ο���"
FROM EMPLOYEES e
GROUP BY e.JOB_ID HAVING COUNT(*)>=4 ;



/**
�� �μ��� ��տ���, ��ü����, �ְ����, ��������,�� ���Ͽ� ��տ����� ���������� ����϶�.
**/


/**
 �μ���ȣ, �μ���, �̸�, �޿��� ����϶�.
**/

SELECT e.DEPARTMENT_ID AS "�μ���ȣ", d.DEPARTMENT_NAME AS "�μ���", e.FIRST_NAME AS "�̸�", e.SALARY AS "�޿�"
FROM EMPLOYEES e, DEPARTMENTS d ;


/**
�̸��� adam�� ����� �μ����� ����϶�.
**/
SELECT e.FIRST_NAME AS "�̸�", d.DEPARTMENT_NAME AS "�μ���"
FROM EMPLOYEES e, DEPARTMENTS d 
WHERE e.FIRST_NAME = 'Adam';



/**
employees���̺� �ִ� employee_id�� manager_id�� �̿��Ͽ� ������ ���踦 ������ ���� ����϶�
'smith'�� �Ŵ����� 'ford'�̴�.
**/



/**
adam�� ������ ���� ������ ���� ����� �̸�, �μ���, �޿�, ������ ����϶�.
**/

??Adam�� ���� Ư���� �� ���� 

/**
��ü ����� ��� �ӱݺ��� ���� ����� �����ȣ, �̸�, �μ���, �Ի���, ����, �޿��� ����϶�.
**/


/**
50�� �μ������ �߿��� 30�� �μ��� ����� ���� ������ �ϴ� ����� �����ȣ, �̸�, �μ���, �Ի����� ����϶�.
**/



/**
�޿��� 30�� �μ��� �ְ� �޿����� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.
**/