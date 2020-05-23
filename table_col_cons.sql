DESCRIBE employees;

DESC employees;

ALTER TABLE employees ENABLE CONSTRAINT EMP_MANAGER_FK;

SELECT
    *
FROM
    user_constraints
WHERE
    table_name='FK';

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
);

ALTER TABLE employees
    ADD CONSTRAINT emp_empid_pk PRIMARY KEY ( employee_id ) DEFERRABLE INITIALLY DEFERRED;

INSERT INTO employees ( employee_id ) VALUES ( 100 );

INSERT INTO employees ( employee_id ) VALUES ( 101 );

INSERT INTO employees ( employee_id ) VALUES ( 101 );

SELECT
    *
FROM
    employees;

COMMIT;  -- error primary key has duplicate values, rollbacked

ALTER TABLE employees MODIFY PRIMARY KEY DISABLE VALIDATE;

ALTER TABLE employees MODIFY PRIMARY KEY DISABLE NOVALIDATE;

INSERT INTO employees ( employee_id ) VALUES ( 101 );

ALTER TABLE employees MODIFY PRIMARY KEY ENABLE VALIDATE;

ALTER TABLE employees MODIFY PRIMARY KEY ENABLE NOVALIDATE;

INSERT INTO employees ( employee_id ) VALUES ( 101 );

COMMIT;

ALTER TABLE employees MODIFY PRIMARY KEY ENABLE VALIDATE;

ALTER TABLE employees ADD CONSTRAINT hk UNIQUE ( hire_date,
                                                 manager_id );

ALTER TABLE employees DROP PRIMARY KEY;

TRUNCATE TABLE employees;

ALTER TABLE employees ADD PRIMARY KEY ( employee_id,
                                        hire_date );

ALTER TABLE employees
    ADD CONSTRAINT fk FOREIGN KEY ( hire_date,
                                    manager_id )
        REFERENCES employees ( hire_date,
                               employee_id );

ALTER TABLE employees MODIFY
    salary CHECK ( salary<>0 );

ALTER TABLE employees DROP COLUMN department_id;

ALTER TABLE employees DROP ( first_name,
                             last_name );

ALTER TABLE employees SET UNUSED COLUMN commission_pct;

SELECT
    *
FROM
    user_unused_col_tabs;

ALTER TABLE employees DROP UNUSED COLUMNS;

SELECT
    *
FROM
    user_unused_col_tabs;