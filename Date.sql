-- Performing arithmetic with date data
ALTER SESSION SET nls_date_format='DD-MON-YY';

SELECT
    sysdate
FROM
    dual;

ALTER SESSION SET nls_date_format='DD-MON-YYYY HH24:MI:SS';

SELECT
    sysdate
FROM
    dual;

SELECT
    sysdate+1
FROM
    dual;

SELECT
    sysdate-1
FROM
    dual;
-- no multiplication and division;

SELECT
    sysdate*2
FROM
    dual;  -- expected number got date

SELECT
    sysdate-hire_date
FROM
    employees;  -- number of days between hire_date and sysdate

SELECT
    hire_date
FROM
    employees;

SELECT
    hire_date
FROM
    employees
WHERE
    hire_date<'31-DEC-2003';

SELECT
    hire_date
FROM
    employees
WHERE
    hire_date<TO_DATE('31122003','DDMMYYYY');

SELECT
    hire_date
FROM
    employees
WHERE
    hire_date<'31/DEC/2003';

SELECT
    hire_date
FROM
    employees
WHERE
    hire_date<'31DEC2003';

SELECT
    hire_date
FROM
    employees
WHERE
    hire_date<'31DEC/2003';

SELECT
    hire_date
FROM
    employees
WHERE
    hire_date<'/31DEC2003';

SELECT
    hire_date
FROM
    employees
WHERE
    hire_date<TO_DATE('31/122003','DDMMYYYY');

SELECT
    sysdate
FROM
    dual;

SELECT
    round(sysdate)
FROM
    dual;

SELECT
    trunc(sysdate)
FROM
    dual;

SELECT
    round(sysdate,'yy')
FROM
    dual;

SELECT
    round(sysdate,'yyyy')
FROM
    dual;

SELECT
    round(sysdate,'mm')
FROM
    dual;

SELECT
    round(sysdate,'dd')
FROM
    dual; --default

SELECT
    round(sysdate,'hh')
FROM
    dual;

SELECT
    round(sysdate,'mi')
FROM
    dual;

SELECT
    round(sysdate,'ss')
FROM
    dual;  -- can't do that

SELECT
    trunc(sysdate,'yy')
FROM
    dual;

SELECT
    trunc(sysdate,'yyyy')
FROM
    dual;

SELECT
    trunc(sysdate,'mm')
FROM
    dual;

SELECT
    trunc(sysdate,'dd')
FROM
    dual; --default

SELECT
    trunc(sysdate,'hh')
FROM
    dual;

SELECT
    trunc(sysdate,'mi')
FROM
    dual;

SELECT
    trunc(sysdate,'ss')
FROM
    dual;  -- can't do that