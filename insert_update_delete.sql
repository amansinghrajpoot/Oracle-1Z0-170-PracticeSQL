CREATE TABLE students (
    student_id   NUMBER(3),
    first_name   VARCHAR2(10),
    last_name    VARCHAR2(10),
        email        VARCHAR2(35) GENERATED ALWAYS AS ( first_name
                                                 ||'.'
                                                 ||last_name
                                                 ||'@oracle.com' )
)
TABLESPACE users;

INSERT INTO students VALUES (
    1,
    'Will',
    'Smith'
);  -- error not enough values

INSERT INTO students (
    student_id,
    first_name,
    last_name
) VALUES (
    1,
    'Will',
    'Smith'
);

SELECT
    *
FROM
    students;

INSERT INTO numdata VALUES ( 3 );

INSERT INTO numdata VALUES (
    SELECT
        3
    FROM
        dual
);  -- not allowed

INSERT INTO numdata
    SELECT
        5
    FROM
        dual;

CREATE FORCE VIEW emp_dept_view AS
    SELECT
        employee_id,
        first_name,
        last_name,
        department_id,
        d.department_name
    FROM
        employees     e
        LEFT JOIN departments   d USING ( department_id )
    ORDER BY
        employee_id;

SELECT
    *
FROM
    emp_dept_view;

CREATE OR REPLACE VIEW numdata_view AS
    SELECT
        *
    FROM
        numdata;

SELECT
    *
FROM
    numdata_view;

INSERT INTO numdata_view VALUES ( 89 );  -- inserting through view

SELECT
    *
FROM
    departments_avg_sal;

INSERT INTO (
    SELECT
        vals
    FROM
        numdata
) VALUES ( 99 );

INSERT INTO (
    SELECT
        vals
    FROM
        numdata
)
    SELECT
        111
    FROM
        dual;

SELECT
    *
FROM
    numdata_view;

UPDATE numdata
SET
    vals=121
WHERE
    vals=111;

UPDATE (
    SELECT
        vals
    FROM
        numdata
)
SET
    vals=111
WHERE
    vals=121;

UPDATE numdata_view
SET
    vals=121
WHERE
    vals=111;

SELECT
    *
FROM
    departments_avg_sal;

UPDATE departments_avg_sal
SET
    ( department_name,
      avg_sal )=(
        SELECT
            'No department',
            0
        FROM
            dual
    )
WHERE
    department_name IS NULL;     -- only subquery is valid for multicolumn update;

SELECT
    *
FROM
    departments_avg_sal;

UPDATE (
    SELECT
        department_name,
        avg_sal
    FROM
        departments_avg_sal
)
SET
    ( department_name,
      avg_sal )=(
        SELECT
            'No department',
            0
        FROM
            dual
    )
WHERE
    department_name='No department';

UPDATE departments_avg_sal
SET
    ( department_name,
      avg_sal )=(
        SELECT
            'No department',
            0
        FROM
            dual
    ),
    department_id=00
WHERE
    department_name='No department';

DELETE FROM numdata
WHERE
    vals=121;

DELETE FROM numdata_view
WHERE
    vals=10;

DELETE FROM (
    SELECT
        vals
    FROM
        numdata
)
WHERE
    vals=19;

SELECT ALL
    *
FROM
    numdata;

-- join viewa

SELECT
    *
FROM
    emp_dept_view;

INSERT INTO emp_dept_view VALUES (
    209,
    'Alice',
    'Foreman',
    50,
    'Shipping'
);    -- insert row in a non key preserved table, not allowed

INSERT INTO emp_dept_view (
    employee_id,
    first_name,
    last_name,
    department_id
) VALUES (
    209,
    'Alice',
    'Foreman',
    50
);

UPDATE emp_dept_view
SET
    employee_id=210
WHERE
    employee_id=118;

UPDATE emp_dept_view
SET
    employee_id=250,
    department_name='Administration'    -- update to more than one base table and non key preserved table
WHERE
    employee_id=210;

ALTER TABLE employees MODIFY PRIMARY KEY DISABLE CASCADE;

DELETE emp_dept_view
WHERE
    department_name='Administration';

SELECT
    *
FROM
    emp_dept_view;

CREATE OR REPLACE VIEW numdata_view AS
    SELECT
        vals
    FROM
        numdata
    WHERE
        vals<10
WITH CHECK OPTION;

SELECT
    *
FROM
    numdata_view;

UPDATE numdata_view
SET
    vals=11
WHERE
    vals=5;    -- error

INSERT INTO numdata_view VALUES ( 11 ); --error

DELETE FROM numdata_view
WHERE
    vals=5;