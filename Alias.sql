SELECT
    first_name
    ||' '
    ||last_name AS Name
FROM
    employees;

SELECT
    Lower(email)
    ||'@'
    ||'oracle.com' Email_address
FROM
    employees;

SELECT
    Round((sysdate-hire_date)/365,1) "Service Years"
FROM
    employees;

SELECT
    Round((sysdate-hire_date)/365,1) AS "Service Years"
FROM
    employees;

SELECT
    last_name,
    hire_date AS "Date"
FROM
    employees;

SELECT
    e.last_name,
    e.phone_number
FROM
    employees e;

SELECT
    last_name,
    employees.phone_number
FROM
    employees;

SELECT
    e.last_name,
    e.phone_number
FROM
    employees e
WHERE
    employee_id=(
        SELECT
            employee_id
        FROM
            employees f
        WHERE
            f.employee_id=e.employee_id
    );