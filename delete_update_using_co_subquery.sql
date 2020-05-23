-- Update and delete rows using correlated subqueries
CREATE TABLE departments_avg_sal (
    department_id     NUMBER(3),
    department_name   VARCHAR2(20),
    avg_sal           NUMBER(10,2)
)
TABLESPACE users;

INSERT INTO departments_avg_sal ( department_id )
    ( SELECT
        department_id
    FROM
        departments
    );

COMMIT WORK; --[work is optional keyword]

SELECT
    *
FROM
    departments_avg_sal;

UPDATE departments_avg_sal f
SET
    ( department_name,
      avg_sal )=(
        SELECT
            d.department_name,
            AVG(e.salary) avg_sal
        FROM
            employees     e
            JOIN departments   d ON ( d.department_id=e.department_id )
        WHERE
            f.department_id=d.department_id
        GROUP BY
            d.department_name
    );

SELECT
    *
FROM
    departments_avg_sal;

COMMIT WORK;

DROP TABLE departments_avg_sal PURGE;

CREATE TABLE defaulters (
    student_id NUMBER(3)
)
TABLESPACE users;

CREATE TABLE students (
    student_id NUMBER(3)
)
TABLESPACE users;

INSERT INTO students
    SELECT
        ROWNUM
    FROM
        dual
    CONNECT BY
        level<10;

INSERT INTO defaulters
    SELECT
        ROWNUM
    FROM
        dual
    CONNECT BY
        level<5;

COMMIT WORK;

SELECT
    *
FROM
    students;

SELECT
    *
FROM
    defaulters;

DELETE FROM students s
WHERE
    student_id IN (
        SELECT
            student_id
        FROM
            defaulters
        WHERE
            s.student_id=student_id
    );

ROLLBACK;

DROP TABLE students PURGE;

DROP TABLE defaulters PURGE;