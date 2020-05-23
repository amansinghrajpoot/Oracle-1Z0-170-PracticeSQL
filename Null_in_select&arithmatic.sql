-- using arithmetic operation and null values in select statement

-- In oracle null means unknown 
SELECT
    NULL
FROM
    dual;

SELECT
    NULL+NULL
FROM
    dual;

SELECT
    NULL-NULL
FROM
    dual;

SELECT
    NULL*NULL
FROM
    dual;

SELECT
    NULL/NULL
FROM
    dual;

SELECT
    NULL+9
FROM
    dual;

SELECT
    NULL*8
FROM
    dual;

SELECT
    NULL-4
FROM
    dual;

SELECT
    NULL/5
FROM
    dual;

SELECT
    'true'
FROM
    dual
WHERE
    NULL=NULL;

SELECT
    'true'
FROM
    dual
WHERE
    NULL IS NULL;
                                 -- where ( null = null ) is null
                                 -- Null or something is something

SELECT
    'true'
FROM
    dual
WHERE
    NULL=NULL
    OR 5=5;

SELECT
    'true'
FROM
    dual
WHERE
    NULL=NULL
    AND 5=5;

SELECT
    'true'
FROM
    dual
WHERE
    1 IN (
        1,
        2,
        3
    );

                           -- in ( null or 1 or 2 or 3)   null or something is something

SELECT
    'true'
FROM
    dual
WHERE
    1 IN (
        NULL,
        1,
        2,
        3
    );
                      
                          -- not in ( <> null and <>1 and <> 2 and <>3)   null and something is null

SELECT
    'true'
FROM
    dual
WHERE
    1 NOT IN (
        NULL,
        1,
        2,
        3
    );

SELECT
    'true'
FROM
    dual
WHERE
    1 NOT IN (
        1,
        2,
        3
    );

SELECT
    'true'
FROM
    dual
WHERE
    1 NOT IN (
        2,
        3
    );

SELECT
    'true'
FROM
    dual
WHERE
    1 BETWEEN 1 AND 3;

SELECT
    'true'
FROM
    dual
WHERE
    ( 1 BETWEEN 1 AND 3 );
                               -- (1 >= 1 and  1 <= null)   (1 = null or 1 < null) is null 
                               --  (1 >= and null) is null

SELECT
    'true'
FROM
    dual
WHERE
    1 BETWEEN 1 AND NULL;

SELECT
    'true'
FROM
    dual
WHERE
    1 BETWEEN 1 AND 1;