--Manipulating numbers with the ROUND, TRUNC and MOD functions
SELECT
    10.567
FROM
    dual;

SELECT
    '10.567'
FROM
    dual;

SELECT
    round(10.567)
FROM
    dual; -- rouded up on 0 position

SELECT
    round('10.567')
FROM
    dual;

SELECT
    trunc(10.567)
FROM
    dual;

SELECT
    trunc('10.567')
FROM
    dual;

SELECT
    round(10.567,1)
FROM
    dual;

SELECT
    round(10.567,2)
FROM
    dual;

SELECT
    round(10.567,3)
FROM
    dual;

SELECT
    round(10.567,4)
FROM
    dual;

SELECT
    round('10.5a7',2)
FROM
    dual;

SELECT
    round(13.567,-1)
FROM
    dual;

SELECT
    round(15.567,-1)
FROM
    dual;

SELECT
    round(13.567,-2)
FROM
    dual;

SELECT
    trunc(10.567,3)
FROM
    dual;

SELECT
    trunc(10.567,2)
FROM
    dual;

SELECT
    trunc(10.567,0)
FROM
    dual;

SELECT
    trunc(13.567,-1)
FROM
    dual;

SELECT
    trunc(13.567,-2)
FROM
    dual;

SELECT
    trunc(13.567,-3)
FROM
    dual;

SELECT
    mod(0,0)
FROM
    dual;

SELECT
    mod(1,0)
FROM
    dual;

SELECT
    mod(5,3)
FROM
    dual;

SELECT
    mod(-5,3)
FROM
    dual;

SELECT
    mod(5,-3)
FROM
    dual;

SELECT
    mod(-5,-3)
FROM
    dual;

SELECT
    remainder(5,3)
FROM
    dual; -- 3*2 = 6   rounding off remaider = -1

SELECT
    remainder(4,3)
FROM
    dual; -- 3*1 = 3  rouding off  reminder = 1