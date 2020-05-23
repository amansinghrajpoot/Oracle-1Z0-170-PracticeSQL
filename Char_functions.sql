-- Manipulating strings with character functions in SQL SELECT and WHERE clauses
SELECT
    length('King')
FROM
    dual;

SELECT
    length(sysdate)
FROM
    dual;

SELECT
    length(400)
FROM
    dual;

SELECT
    lpad('lpaded',10,'*')
FROM
    dual;

SELECT
    lpad('lpaded',1,'*')
FROM
    dual;

SELECT
    rpad('rpaded',10,'*')
FROM
    dual;

SELECT
    rpad('rpaded',6,'*')
FROM
    dual;

SELECT
    rpad('rpaded',1,'*')
FROM
    dual;

SELECT
    rpad('rpaded',7,'*')
FROM
    dual;

SELECT
    rpad('rpaded',-1,'*')
FROM
    dual;

SELECT
    rpad('rpaded',0,'*')
FROM
    dual;

SELECT
    instr('Stephen King','e')
FROM
    dual;

SELECT
    instr('Stephen King','e',2)
FROM
    dual;  -- second occurence of e

SELECT
    instr('Stephen King',8)
FROM
    dual;

SELECT
    instr('Stephen King','8')
FROM
    dual;

SELECT
    instr('Stephen King','ph')
FROM
    dual;

SELECT
    email,
    instr(email,lower(last_name))
FROM
    employees;

SELECT
    instr('Stephen King','ph',1,1)
FROM
    dual;

SELECT
    instr('Stephken Kinkg','k',1,1)
FROM
    dual;

SELECT
    instr('Stephken Kinkgk','k',1,2)
FROM
    dual;

SELECT
    instr('Stephken Kinkgk','k',1,3)
FROM
    dual;

SELECT
    instr('Stephken Kinkgk','k',7,3)
FROM
    dual;

SELECT
    instr('Stephken Kinkgk','k',7,2)
FROM
    dual;   -- position from where it start seeking and occurrence

SELECT
    instr('Stephken King','k',6,1)
FROM
    dual;

SELECT
    instr('Stephken King','k',7,1)
FROM
    dual;

SELECT
    instr('Stephken King','k',-7,1)
FROM
    dual;

SELECT
    instr('Stephken King','k',-7,1)
FROM
    dual;

SELECT
    instr('Stephken King','k',0,1)
FROM
    dual;

SELECT
    initcap('king')
FROM
    dual;

SELECT
    lower('KinG')
FROM
    dual;

SELECT
    upper('KinG')
FROM
    dual;

SELECT
    TRIM(TRAILING 'n' FROM 'ssssssstephennnnnn')
FROM
    dual;

SELECT
    TRIM(LEADING 's' FROM 'ssssssstephennnnnn')
FROM
    dual;

SELECT
    ltrim('ssssssstephennnnnn','s')
FROM
    dual;

SELECT
    rtrim('ssssssstephennnnnn','s')
FROM
    dual;

SELECT
    rtrim('ssssssstephennnnnn','n')
FROM
    dual;

SELECT
    ascii(0)
FROM
    dual;

SELECT
    ascii('a')
FROM
    dual;

SELECT
    ascii('A')
FROM
    dual;

SELECT
    ascii('S')
FROM
    dual;

SELECT
    ascii('Stephen')
FROM
    dual;

SELECT
    substr('Stephen King',1)
FROM
    dual;

SELECT
    substr('Stephen King',9)
FROM
    dual;

SELECT
    substr('Stephen King',1,1)
FROM
    dual;

SELECT
    substr('Stephen King',-1,1)
FROM
    dual;

SELECT
    substr('Stephen King',-12,1)
FROM
    dual;

SELECT
    substr('Stephen King',13,1)
FROM
    dual;

SELECT
    department_id
FROM
    employees;

SELECT DISTINCT
    department_id
FROM
    employees;

SELECT UNIQUE
    department_id
FROM
    employees;

SELECT DISTINCT
    department_id,
    salary
FROM
    employees;