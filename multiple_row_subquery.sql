-- multiple row subqueries
SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    department_id IN (
        SELECT
            department_id
        FROM
            departments
    );

SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    department_id=(
        SELECT
            100
        FROM
            dual
    );

SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    department_id IN (
        SELECT
            100
        FROM
            dual
    );

SELECT
    last_name,
    salary
FROM
    (
        SELECT
            last_name,
            salary,
            department_id
        FROM
            employees
        WHERE
            department_id=100
    );    -- inline view

SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    department_id=ANY (
        SELECT
            department_id
        FROM
            departments
    ); --  equivalent to in operator

SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    department_id<ANY (
        SELECT
            department_id
        FROM
            departments
    );

SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    department_id>ANY (
        SELECT
            department_id
        FROM
            departments
    );

SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    department_id>ALL (
        SELECT
            department_id
        FROM
            departments
    );

SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    department_id<ALL (
        SELECT
            department_id
        FROM
            departments
    );