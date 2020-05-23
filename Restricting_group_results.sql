-- Restricting Group Results
SELECT
    department_id,
    SUM(salary)
FROM
    employees
WHERE
    department_id<80
GROUP BY
    department_id;

SELECT
    department_id,
    SUM(salary)
FROM
    employees
WHERE
    department_id<80
GROUP BY
    department_id
ORDER BY
    department_id;

SELECT
    department_id,
    SUM(salary)
FROM
    employees
WHERE
    department_id<80
GROUP BY
    department_id
HAVING
    department_id=50
ORDER BY
    department_id;

SELECT
    department_id,
    SUM(salary)
FROM
    employees
WHERE
    department_id<80
GROUP BY
    department_id
HAVING
    SUM(salary)>100000
ORDER BY
    department_id;

SELECT
    department_id,
    SUM(salary)
FROM
    employees
WHERE
    department_id<80
GROUP BY
    department_id
HAVING
    COUNT(*)>5
ORDER BY
    department_id;

SELECT
    department_id,
    SUM(salary)
FROM
    employees
WHERE
    department_id<80
HAVING
    COUNT(*)>5
group by department_id order by department_id;    -- it works