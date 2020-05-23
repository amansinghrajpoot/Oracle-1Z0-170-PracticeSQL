-- Using Group Functions
SELECT
    MIN(salary)
FROM
    employees;

SELECT
    MAX(salary)
FROM
    employees;

SELECT
    COUNT(*)
FROM
    employees;    -- all rows

SELECT
    COUNT(commission_pct)
FROM
    employees;  --excludes nulls

SELECT
    AVG(salary)
FROM
    employees;   -- exclude nulls

SELECT
    SUM(salary)
FROM
    employees;