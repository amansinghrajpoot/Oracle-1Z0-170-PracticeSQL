SELECT
    *
FROM
    departments_avg_sal;

CREATE TABLE department_ids (
    department_id NUMBER(3)
);

CREATE TABLE departments_name_sal (
    department_name   VARCHAR2(25),
    avg_sal           NUMBER(10,2)
);

SELECT
    *
FROM
    department_ids;

SELECT
    *
FROM
    departments_name_sal;

SELECT
    *
FROM
    departments_avg_sal;

INSERT ALL INTO department_ids VALUES ( department_id ) INTO departments_name_sal VALUES (
    department_name,
    avg_sal
) SELECT
      *
  FROM
      departments_avg_sal;

INSERT ALL INTO department_ids VALUES ( 999 ) INTO departments_name_sal VALUES (
    'No Department',
    avg_sal
) SELECT
      *
  FROM
      departments_avg_sal;

INSERT ALL INTO department_ids ( department_id ) VALUES ( 999 ) INTO departments_name_sal VALUES (
    'No Department',
    avg_sal
) SELECT
      *
  FROM
      departments_avg_sal;

INSERT ALL INTO department_ids ( department_id ) VALUES ( 999 ) INTO departments_name_sal VALUES (
    'No Department',
    avg_sal
) SELECT
      *
  FROM
      departments_avg_sal;

    INSERT
        INTO department_ids ( department_id )
    VALUES ( 999 )
    INTO departments_name_sal
VALUES (
    'No Department',
    avg_sal
)  -- error
SELECT
    *
FROM
    departments_avg_sal;

TRUNCATE TABLE department_ids;

TRUNCATE TABLE departments_name_sal;

INSERT
    ALL WHEN department_id<>0 THEN
        INTO department_ids
        VALUES ( department_id )
        WHEN department_name<>'No department' THEN
            INTO departments_name_sal
            VALUES (
                department_name,
                avg_sal
            )
SELECT
    *
FROM
    departments_avg_sal;

SELECT
    *
FROM
    department_ids;

SELECT
    *
FROM
    departments_name_sal;

TRUNCATE TABLE department_ids;

TRUNCATE TABLE departments_name_sal;

INSERT   -- default all
    WHEN department_id<>0 THEN
        INTO department_ids
        VALUES ( department_id )
        WHEN department_name<>'No department' THEN
            INTO departments_name_sal
            VALUES (
                department_name,
                avg_sal
            )
SELECT
    *
FROM
    departments_avg_sal;

SELECT
    *
FROM
    department_ids;

SELECT
    *
FROM
    departments_name_sal;

TRUNCATE TABLE department_ids;

TRUNCATE TABLE departments_name_sal;

INSERT
    FIRST WHEN department_id<>0 THEN
        INTO department_ids
        VALUES ( department_id )
        WHEN department_name<>'No department' THEN
            INTO departments_name_sal
            VALUES (
                department_name,
                avg_sal
            )
SELECT
    *
FROM
    departments_avg_sal;

INSERT ALL INTO department_ids VALUES ( department_id ) INTO departments_name_sal VALUES (
    department_name,
    avg_sal
) SELECT
      *
  FROM
      departments_avg_sal;

SELECT
    *
FROM
    department_ids;

SELECT
    *
FROM
    departments_name_sal;

TRUNCATE TABLE department_ids;

TRUNCATE TABLE departments_name_sal;

ALTER TABLE departments_name_sal ADD department_id NUMBER(3);

UPDATE departments_name_sal
SET
    department_id=110;

MERGE INTO departments_name_sal e
USING departments_avg_sal d ON ( e.department_id=d.department_id )
WHEN MATCHED THEN UPDATE
SET department_name=department_name,
    avg_sal=avg_sal;

MERGE INTO departments_name_sal e
USING departments_avg_sal d ON ( e.department_id=d.department_id )
WHEN MATCHED THEN UPDATE
SET department_name=department_name,
    avg_sal=avg_sal DELETE
WHERE
                    avg_sal<>0;

MERGE INTO departments_name_sal e
USING departments_avg_sal d ON ( e.department_id=d.department_id )
WHEN MATCHED THEN UPDATE
SET department_name=department_name,
    avg_sal=avg_sal DELETE
WHERE
                    avg_sal<>0
WHEN NOT MATCHED THEN
INSERT
VALUES
    ( d.department_name,
      d.avg_sal,
      d.department_id );

SELECT
    *
FROM
    departments_name_sal;

SELECT
    *
FROM
    departments_avg_sal;

MERGE INTO ( SELECT
              *
          FROM
              departments_name_sal
          )
e
USING departments_avg_sal d ON ( e.department_id=d.department_id )
WHEN MATCHED THEN UPDATE
SET department_name=department_name,
    avg_sal=avg_sal DELETE
WHERE
                    avg_sal<>0
WHEN NOT MATCHED THEN
INSERT
VALUES
    ( d.department_name,
      d.avg_sal,
      d.department_id );