-- Using Substitution Variables
Define;

SET DEFINE &;

DEFINE var=9;

DEFINE varc='King'

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    last_name='&varc';   -- char data must be in "'"

UNDEFINE varc;

UNDEFINE var;

DEF varc;

DEF var;
                                          -- & prompt every time for the value where & is used 

SELECT
    &col_name,
    salary
FROM
    employees;  
                                          -- left to right scan

SELECT
    &col_name,
    &col_name
FROM
    employees;
                                         -- && prompt for the first time if variable is not defined and store the value 

SELECT
    &&col_name,
    &col_name
FROM
    employees;

UNDEF col_name;

SELECT
    &&col_name,
    &&col_name
FROM
    employees;

SELECT
    &col_name,
    &&col_name
FROM
    employees;

SELECT
    &col_name
FROM
    employees
WHERE
&condition;

SELECT
    salary
FROM
    employees
WHERE
    last_name='&name';

