-- set operators
SELECT
    100
FROM
    dual
UNION
SELECT
    NULL
FROM
    dual;

INSERT INTO numdata
    SELECT
        NULL
    FROM
        dual;

INSERT INTO numdata
    SELECT
        100
    FROM
        dual;

COMMIT;

SELECT
    department_id
FROM
    employees
UNION
SELECT
    vals
FROM
    numdata;

SELECT
    department_id
FROM
    employees
UNION ALL
SELECT
    vals
FROM
    numdata;

SELECT
    department_id
FROM
    employees
INTERSECT
SELECT
    vals
FROM
    numdata;

SELECT
    department_id
FROM
    employees
MINUS
SELECT
    vals
FROM
    numdata;

SELECT
    vals
FROM
    numdata
UNION
SELECT
    vals
FROM
    varchardata;

SELECT
    department_id,
    department_name
FROM
    departments
UNION
SELECT
    salary,
    NULL
FROM
    employees;

SELECT
    department_id,
    department_name
FROM
    departments
UNION
SELECT
    salary,
    NULL
FROM
    employees
ORDER BY
    department_id;

SELECT
    department_id,
    department_name
FROM
    departments
UNION
SELECT
    salary,
    NULL
FROM
    employees
ORDER BY
    salary;  -- error 

SELECT
    department_id,
    department_name
FROM
    departments
ORDER BY
    department_id
union
select salary, null from employees;

select * from (
select department_id, department_name from departments
order by department_id)
union
select salary,null FROM
employees;

SELECT
    vals
FROM
    varchardata
UNION
SELECT
    vals
FROM
    chardata;

SELECT
    vals
FROM
    datedata
UNION
SELECT
    vals
FROM
    timestampdata;

SELECT
    vals
FROM
    datedata
UNION
SELECT
    vals
FROM
    timestamptzdata;

SELECT
    vals
FROM
    datedata
UNION
SELECT
    vals
FROM
    timestampltzdata;