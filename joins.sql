-- Using joins
SELECT
    e.employee_id   "ID",
    e.last_name     "Employee Name",
    m.last_name     "Manager Name"
FROM
    employees   e
    JOIN employees   m ON ( e.manager_id=m.employee_id )
ORDER BY
    "ID";

SELECT
    e.employee_id   "ID",
    e.last_name     "Employee Name",
    m.last_name     "Manager Name"
FROM
    employees   e
    LEFT JOIN employees   m ON ( e.manager_id=m.employee_id )
ORDER BY
    "ID";

SELECT
    last_name,
    salary,
    job_grade
FROM
    employees
    JOIN job_grades ON ( salary BETWEEN lowest_sal AND highest_sal );

SELECT
    last_name,
    e.department_id,
    department_name
FROM
    employees     e
    JOIN departments   d ON ( e.department_id=d.department_id );

SELECT
    last_name,
    e.department_id,
    department_name
FROM
    employees     e
    INNER JOIN departments   d ON ( e.department_id=d.department_id );

SELECT
    last_name,
    e.department_id,
    department_name
FROM
    employees     e
    LEFT JOIN departments   d ON ( e.department_id=d.department_id );

SELECT
    last_name,
    e.department_id,
    department_name
FROM
    employees     e
    LEFT OUTER JOIN departments   d ON ( e.department_id=d.department_id );

SELECT
    last_name,
    e.department_id,
    department_name
FROM
    employees     e
    RIGHT JOIN departments   d ON ( e.department_id=d.department_id );

SELECT
    last_name,
    e.department_id,
    department_name
FROM
    employees     e
    RIGHT OUTER JOIN departments   d ON ( e.department_id=d.department_id );

SELECT
    last_name,
    e.department_id,
    department_name
FROM
    employees     e
    FULL JOIN departments   d ON ( e.department_id=d.department_id );

SELECT
    last_name,
    e.department_id,
    department_name
FROM
    employees     e
    FULL OUTER JOIN departments   d ON ( e.department_id=d.department_id );

CREATE TABLE numdata (
    vals NUMBER(3)
);

CREATE TABLE varchardata (
    vals VARCHAR2(10)
);

CREATE TABLE chardata (
    vals CHAR(18)
);

CREATE TABLE datedata (
    vals DATE
);

CREATE TABLE timestampdata (
    vals TIMESTAMP
);

CREATE TABLE timestamptzdata (
    vals TIMESTAMP WITH TIME ZONE
);

CREATE TABLE timestampltzdata (
    vals TIMESTAMP WITH LOCAL TIME ZONE
);

INSERT INTO numdata
    SELECT
        ROWNUM
    FROM
        dual
    CONNECT BY
        level<15;

DELETE FROM numdata
WHERE
    vals>5
    AND vals<11;

SELECT
    *
FROM
    numdata;

COMMIT;

INSERT INTO varchardata
    SELECT
        ROWNUM+1
    FROM
        dual
    CONNECT BY
        level<12;

SELECT
    *
FROM
    varchardata;

COMMIT;

INSERT INTO chardata
    SELECT
        ROWNUM+3
    FROM
        dual
    CONNECT BY
        level<18;

SELECT
    *
FROM
    chardata;

COMMIT;

INSERT INTO datedata
    SELECT
        sysdate+ROWNUM
    FROM
        dual
    CONNECT BY
        level<11;

SELECT
    *
FROM
    datedata;

COMMIT;

INSERT INTO timestampdata
    SELECT
        current_timestamp+ROWNUM
    FROM
        dual
    CONNECT BY
        level<11;

SELECT
    *
FROM
    timestampdata;

COMMIT;

INSERT INTO timestamptzdata
    SELECT
        current_timestamp+ROWNUM
    FROM
        dual
    CONNECT BY
        level<11;

SELECT
    *
FROM
    timestamptzdata;

COMMIT;

INSERT INTO timestampltzdata
    SELECT
        localtimestamp+ROWNUM
    FROM
        dual
    CONNECT BY
        level<11;

SELECT
    *
FROM
    timestampltzdata;

COMMIT;

SELECT
    e.vals,
    f.vals
FROM
    numdata    e
    JOIN chardata   f ON ( e.vals=f.vals );

SELECT
    vals valuess
FROM
    numdata    e
    JOIN chardata   f USING ( vals );            -- can not qualify identifiers with table alias

SELECT
    vals valuess
FROM
    numdata    e
    LEFT JOIN chardata   f USING ( vals );

SELECT
    vals valuess
FROM
    numdata right
    JOIN chardata USING ( vals );

SELECT
    e.last_name,
    salary,
    department_id,
    department_name
FROM
    employees e
    JOIN departments USING ( department_id );

SELECT
    e.last_name,
    salary,
    department_id,
    department_name
FROM
    employees     e
    NATURAL JOIN departments   d;

SELECT
    e.last_name,
    salary,
    department_id,
    department_name
FROM
    employees     e
    NATURAL LEFT JOIN departments   d;

SELECT
    e.last_name,
    salary,
    department_id,
    department_name
FROM
    employees     e
    NATURAL RIGHT JOIN departments   d;

SELECT
    e.last_name,
    salary,
    d.department_id
FROM
    employees     e
    CROSS JOIN departments   d;

SELECT
    f.vals,
    e.vals
FROM
    chardata   e
    CROSS JOIN datedata   f;

SELECT
    vals
FROM
    numdata
    NATURAL JOIN chardata;

SELECT
    vals
FROM
    datedata
    NATURAL JOIN timestampdata;

SELECT
    vals
FROM
    timestamptzdata
    NATURAL JOIN timestampdata;

SELECT
    vals
FROM
    timestamptzdata
    NATURAL JOIN timestampltzdata;