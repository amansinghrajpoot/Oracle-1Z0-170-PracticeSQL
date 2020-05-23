-- Creating Groups of Data
SELECT
    department_id
FROM
    employees;

SELECT
    department_id
FROM
    employees
GROUP BY
    department_id;

-- result will be equal to

SELECT UNIQUE
    department_id
FROM
    employees;

SELECT
    department_id,
    AVG(salary)
FROM
    employees
GROUP BY
    department_id;

SELECT
    department_id,
    round(AVG(salary))
FROM
    employees
GROUP BY
    department_id;

SELECT
    department_id,
    round(AVG(salary))
FROM
    employees
GROUP BY
    1;      -- can't use select list position

SELECT
    department_id deptid,
    round(AVG(salary))
FROM
    employees
GROUP BY
    deptid;      -- can't use columnn alias

SELECT
    department_id,
    commission_pct,
    round(AVG(salary))
FROM
    employees
WHERE
    department_id<100
GROUP BY
    department_id,
    commission_pct;