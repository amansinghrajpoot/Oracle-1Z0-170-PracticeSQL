SELECT
    (
        SELECT
            89
        FROM
            dual
    )
FROM
    employees;

SELECT
    (
        SELECT
            89
        FROM
            dual
    ),
    (
        SELECT
            SUM(salary)
        FROM
            employees
    )
FROM
    employees;

SELECT DISTINCT
    department_id,
    (
        SELECT
            AVG(salary)
        FROM
            employees
        GROUP BY
            department_id
        HAVING
            department_id=e.department_id
    )
FROM
    employees e;

SELECT DISTINCT
    department_id,
    (
        SELECT
            round(AVG(salary))
        FROM
            employees
        GROUP BY
            department_id
        HAVING
            department_id=e.department_id
    )
FROM
    employees e;

SELECT DISTINCT
    department_id,
    (
        SELECT
            round(AVG(salary))
        FROM
            employees
        GROUP BY
            department_id
        HAVING
            department_id=e.department_id
    ) AVGSAL
FROM
    employees e;

SELECT DISTINCT
    department_id,
    (
        SELECT
            round(AVG(salary))
        FROM
            employees
        GROUP BY
            department_id
        HAVING department_id=e.department_id
               OR ( department_id IS NULL
                    AND e.department_id IS NULL )
    ) AVGSAL
FROM
    employees e;

SELECT DISTINCT
    department_id,
    (
        SELECT
            round(AVG(salary))
        FROM
            employees
        GROUP BY
            department_id
        HAVING department_id=e.department_id
               OR ( department_id IS NULL
                    AND e.department_id IS NULL )
    ) AVGSAL
FROM
    employees e
ORDER BY
    department_id;

SELECT
    numbers
FROM
    (
        SELECT
            1000 numbers
        FROM
            dual
    );

SELECT
    numbers
FROM
    (
        SELECT
            ROWNUM numbers
        FROM
            dual
        CONNECT BY
            level<10
    )
WHERE
    ROWNUM<10;

SELECT
    numbers
FROM
    (
        SELECT
            ROWNUM numbers
        FROM
            dual
        CONNECT BY
            level<10
    )
WHERE
    ROWNUM<11;

SELECT
    numbers
FROM
    (
        SELECT
            ROWNUM numbers
        FROM
            dual
        CONNECT BY
            level<10
    );

SELECT
    salary
FROM
    employees
WHERE
    salary>(
        SELECT
            AVG(salary)
        FROM
            employees
    );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    ( last_name,
      salary )=(
        SELECT
            'king',
            24000
        FROM
            dual
    );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    ( last_name,
      salary ) IN (
        SELECT
            'king',
            24000
        FROM
            dual
    );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    ( last_name,
      salary )=(
        SELECT
            'king',
            24000
        FROM
            dual
    );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    ( last_name )=(
        SELECT
            'king'
        FROM
            dual
    );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    ( last_name,
      salary )=(
        SELECT
            'King',
            24000
        FROM
            dual
    );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    (
        SELECT
            last_name
        FROM
            dual
    )=(
        SELECT
            'King'
        FROM
            dual
    );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    ( last_name,
      salary ) IN (
        SELECT
            'King',
            24000
        FROM
            dual
        CONNECT BY
            level<4
    );