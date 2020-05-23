DROP TABLE employees PURGE;

CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID      NUMBER(6,0),
    FIRST_NAME       VARCHAR2(20 BYTE),
    LAST_NAME        VARCHAR2(25 BYTE),
    EMAIL            VARCHAR2(35 BYTE),
    PHONE_NUMBER     VARCHAR2(20 BYTE),
    HIRE_DATE        DATE,
    JOB_ID           VARCHAR2(10 BYTE),
    SALARY           NUMBER(8,2),
    COMMISSION_PCT   NUMBER(2,2),
    MANAGER_ID       NUMBER(6,0),
    DEPARTMENT_ID    NUMBER(4,0)
)
TABLESPACE users;

ALTER TABLE employees ADD CONSTRAINT emp_pk PRIMARY KEY ( employee_id );

CREATE TABLE emp_ids (
    emp_id NUMBER(3)
)
TABLESPACE users;

ALTER TABLE emp_ids
    ADD CONSTRAINT empid_fk FOREIGN KEY ( emp_id )
        REFERENCES employees ( employee_id )
            ON DELETE CASCADE;

TRUNCATE TABLE employees;

INSERT INTO employees ( employee_id ) VALUES ( 100 );

INSERT INTO employees ( employee_id ) VALUES ( 200 );

INSERT INTO emp_ids ( emp_id ) VALUES ( 100 );

INSERT INTO emp_ids ( emp_id ) VALUES ( 200 );

SELECT
    *
FROM
    employees;

SELECT
    *
FROM
    emp_ids;

TRUNCATE TABLE employees;

TRUNCATE TABLE employees CASCADE;

ALTER TABLE employees MODIFY
    first_name invisible;

INSERT INTO employees (
    employee_id,
    first_name
) VALUES (
    100,
    'William'
);

SELECT
    *
FROM
    employees;

ALTER TABLE employees MODIFY
    first_name visible;

SELECT
    *
FROM
    employees;

SELECT
    *
FROM
    User_tab_cols;

ALTER TABLE employees ADD CONSTRAINT hire_date_ck CHECK ( hire_date<sysdate );        -- sysdate is not allowed in check constraint

INSERT INTO employees ( employee_id ) VALUES ( 123456 );

INSERT INTO employees ( employee_id ) VALUES ( 1234567 );

INSERT INTO employees ( employee_id ) VALUES ( 123456.7 );

SELECT
    *
FROM
    employees;

ALTER TABLE employees DISABLE PRIMARY KEY CASCADE;

ALTER TABLE employees MODIFY PRIMARY KEY NOVALIDATE;

INSERT INTO employees ( employee_id ) VALUES ( 123456.7 );

SELECT
    *
FROM
    employees;

ALTER TABLE employees MODIFY PRIMARY KEY VALIDATE;  -- error remove duplicates

ALTER TABLE employees MODIFY PRIMARY KEY DISABLE VALIDATE; -- error remove duplicates

DELETE employees
WHERE
    employee_id=123457;

SELECT
    *
FROM
    employees;

ALTER TABLE employees MODIFY PRIMARY KEY VALIDATE;

ALTER TABLE employees MODIFY PRIMARY KEY DISABLE VALIDATE;

ALTER TABLE employees MODIFY PRIMARY KEY ENABLE NOVALIDATE;

ALTER TABLE employees MODIFY PRIMARY KEY DISABLE VALIDATE;

INSERT INTO employees ( employee_id ) VALUES ( 123458 );  -- can not enter new values when disable validate

SELECT
    *
FROM
    employees;

ALTER TABLE employees MODIFY PRIMARY KEY DISABLE NOVALIDATE;

INSERT INTO employees ( employee_id ) VALUES ( 123458 );

ALTER TABLE employees MODIFY PRIMARY KEY ENABLE NOVALIDATE;

DELETE employees
WHERE
    employee_id=123458;

ALTER TABLE employees MODIFY PRIMARY KEY ENABLE NOVALIDATE;

INSERT INTO employees ( employee_id ) VALUES ( 123458 );

CREATE INDEX emp_fname_idx ON
    employees (
        first_name
    )
        COMPRESS;

SELECT
    *
FROM
    user_indexes
WHERE
    table_name='EMPLOYEES';

ALTER INDEX emp_fname_idx INVISIBLE;

SELECT
    *
FROM
    user_indexes
WHERE
    table_name='EMPLOYEES';

ALTER INDEX emp_fname_idx UNUSABLE;

SELECT
    *
FROM
    user_indexes
WHERE
    table_name='EMPLOYEES';

ALTER INDEX emp_fname_idx VISIBLE;

ALTER INDEX emp_fname_idx REBUILD;

CREATE INDEX emp_fname_funcidx ON
    employees ( upper(first_name) );

SELECT
    *
FROM
    user_indexes
WHERE
    table_name='EMPLOYEES';

CREATE INDEX emp_comp_idx ON
    employees (
        first_name,
        last_name
    );

SELECT
    *
FROM
    user_indexes
WHERE
    table_name='EMPLOYEES';

ALTER TABLE employees DROP COLUMN last_name;

SELECT
    *
FROM
    user_indexes
WHERE
    table_name='EMPLOYEES';

SELECT
    *
FROM
    employees;

ALTER TABLE employees ADD CONSTRAINT job_sal_uk UNIQUE ( job_id,
                                                         salary );

ALTER TABLE employees MODIFY PRIMARY KEY DISABLE NOVALIDATE;

INSERT INTO employees ( job_id ) VALUES ( 'IT' );

SELECT
    *
FROM
    employees;

INSERT INTO employees ( job_id ) VALUES ( 'IT' );

ALTER TABLE employees DROP CONSTRAINT emp_pk CASCADE;

TRUNCATE TABLE employees;

ALTER TABLE employees ADD PRIMARY KEY ( employee_id,
                                        department_id );

ALTER TABLE employees
    ADD FOREIGN KEY ( manager_id,
                      salary )
        REFERENCES employees ( employee_id,
                               department_id );

SELECT
    *
FROM
    user_constraints
WHERE
    table_name='EMPLOYEES';

INSERT INTO employees (
    employee_id,
    department_id
) VALUES (
    10,
    10
);

INSERT INTO employees (
    employee_id,
    department_id,
    manager_id
) VALUES (
    20,
    20,
    10
);

INSERT INTO employees (
    employee_id,
    department_id,
    manager_id
) VALUES (
    30,
    30,
    10
);

SELECT
    *
FROM
    employees;

INSERT INTO employees (
    employee_id,
    department_id,
    manager_id,
    salary
) VALUES (
    40,
    40,
    10,
    10
);

INSERT INTO employees (
    employee_id,
    department_id,
    manager_id,
    salary
) VALUES (
    50,
    50,
    10,
    10
);

SELECT
    *
FROM
    employees;

SELECT
    *
FROM
    user_constraints
WHERE
    table_name='EMPLOYEES';

ALTER TABLE employees DROP CONSTRAINT SYS_C0011392;

ALTER TABLE employees DROP PRIMARY KEY;

INSERT INTO employees ( job_id ) VALUES ( 'IT' );

SELECT
    *
FROM
    employees;

INSERT INTO employees ( job_id ) VALUES ( 'IT' ); --error

CREATE INDEX idx_lname ON
    employees (
        email
    );

CREATE UNIQUE INDEX idx_lname1 ON
    employees (
        email
    );