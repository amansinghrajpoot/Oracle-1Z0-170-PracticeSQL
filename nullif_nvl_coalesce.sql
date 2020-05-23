-- Applying the NVL, NULLIF, and COALESCE functions to data
SELECT
    commission_pct
FROM
    employees;

SELECT
    nvl(commission_pct,0)
FROM
    employees;

SELECT
    nvl(commission_pct,'0')
FROM
    employees;

SELECT
    nvl(commission_pct,'a')
FROM
    employees; -- invalid number, implicit conversion can not be done by oracle

SELECT
    nvl('not null',NULL)
FROM
    dual;

SELECT
    nvl(NULL,NULL)
FROM
    dual;

SELECT
    nvl(NULL,0)
FROM
    dual;

SELECT
    nvl('not null',sysdate)
FROM
    dual;

SELECT
    nvl('not null',0)
FROM
    dual;

SELECT
    nullif(0,0)
FROM
    dual;

SELECT
    nullif(0,'0')
FROM
    dual;  -- inconsistent data type no implicit conversion

SELECT
    nullif(0,NULL)
FROM
    dual;  -- returns 0

SELECT
    nullif(NULL,0)
FROM
    dual; -- error expected - got char

SELECT
    nullif(NULL,NULL)
FROM
    dual; -- error inconsistent data type

SELECT
    coalesce(0)
FROM
    dual; -- not enough arguments

SELECT
    coalesce(0,1)
FROM
    dual;

SELECT
    coalesce(NULL,1)
FROM
    dual;

SELECT
    coalesce(NULL,NULL,2)
FROM
    dual;

SELECT
    coalesce(1,'3',2)
FROM
    dual; -- inconsistent data type, no implicit conversion

SELECT
    nvl2(NULL,0,1)
FROM
    dual;

SELECT
    nvl2('not null',0,1)
FROM
    dual;  -- implicit conversion

SELECT
    nvl2('not null',sysdate,'12-DEC-2012')
FROM
    dual;

SELECT
    nvl2('a',0,'9')
FROM
    dual;