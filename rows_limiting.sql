-- Limiting Rows Returned in a SQL Statement
SELECT
    Last_name,
    salary,
    hire_date
FROM
    employees;

SELECT
    Last_name,
    salary,
    hire_date
FROM
    employees
FETCH FIRST 10 ROWS ONLY;

                                       -- rounded up

SELECT
    Last_name,
    salary,
    hire_date
FROM
    employees
FETCH FIRST 50 PERCENT ROWS ONLY;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    salary
FETCH FIRST 10 ROWS ONLY;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    salary
FETCH FIRST 10 ROWS WITH TIES;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    salary
FETCH FIRST 12 PERCENT ROWS WITH TIES;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    salary
OFFSET 3 ROWS FETCH FIRST 10 ROWS ONLY;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    salary
FETCH FIRST -12  percent rows with ties;

select last_name, salary, hire_date from employees
order by salary
offset 13 rows fetch first -10 rows only;

select last_name, salary, hire_date from employees
order by salary
offset 13 rows fetch first 10 rows only;

select last_name, salary, hire_date from employees order by salary offset-10 rows fetch first 10 rows
only;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    salary
OFFSET 10 ROWS FETCH FIRST 10 ROWS ONLY;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    salary;
