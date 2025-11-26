--  OVER()
    SELECT emp_no, department, salary, AVG(salary) OVER() FROM employees;
 
    SELECT 
        emp_no, 
        department, 
        salary, 
        MIN(salary) OVER(),
        MAX(salary) OVER()
    FROM employees;

    -- OVER WITH PARTITION BY
    SELECT 
    emp_no, 
    department, 
    salary, 
    AVG(salary) OVER(PARTITION BY department) AS dept_avg,
    AVG(salary) OVER() AS company_avg
    FROM employees;
    
    SELECT 
        emp_no, 
        department, 
        salary, 
        COUNT(*) OVER(PARTITION BY department) as dept_count
    FROM employees;
    
    SELECT 
        emp_no, 
        department, 
        salary, 
        SUM(salary) OVER(PARTITION BY department) AS dept_payroll,
        SUM(salary) OVER() AS total_payroll
    FROM employees;

    -- ORDER BY
    SELECT EMP_NO,
		DEPARTMENT,
		SALARY, 
        sum(SALARY) OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS ROLLING_DEPT_SALATY,
        sum(SALARY) OVER(PARTITION BY DEPARTMENT) AS TOTAL_DEPT_SALARY
    FROM EMPLOYEES;

    SELECT EMP_NO,
            DEPARTMENT,
            SALARY, 
        min(SALARY) OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS ROLLING_MIN
    FROM EMPLOYEES;

    -- RANK()
    SELECT EMP_NO,
            DEPARTMENT,
            SALARY, 
            RANK() OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS DEPT_SALARY_RANK,
            RANK() OVER(ORDER BY SALARY DESC) AS OVERALL_SALARY_RANK
    FROM EMPLOYEES;

    -- DENSE_RANK&ROW_NUMBER()
    SELECT EMP_NO,
		DEPARTMENT,
		SALARY, 
		ROW_NUMBER() OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS DEPT_ROW_NUMBER,
        RANK() OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS DEPT_SALARY_RANK,
        RANK() OVER(ORDER BY SALARY DESC) AS OVERALL_SALARY_RANK,
		DENSE_RANK() OVER(ORDER BY SALARY DESC) AS OVERALL_DENSE_RANK
    FROM EMPLOYEES;

    -- NTILE
    SELECT 
    emp_no, 
    department, 
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
	NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
    FROM employees;

    -- FIRST_VALUE
    SELECT 
    emp_no, 
    department, 
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) as highest_paid_dept,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) as highest_paid_overall
    FROM employees;

    -- LEAD AND LAG
    SELECT 
    emp_no, 
    department, 
    salary,
    salary - LAG(salary) OVER(ORDER BY salary DESC) as salary_diff
    FROM employees;
 
    SELECT 
    emp_no, 
    department, 
    salary,
    salary - LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) as dept_salary_diff
    FROM employees;