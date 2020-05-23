-- timestamps
SELECT
    sysdate
FROM
    dual;

SELECT
    dbtimezone
FROM
    dual;

SELECT
    systimestamp
FROM
    dual;

SELECT
    current_timestamp
FROM
    dual;

SELECT
    localtimestamp
FROM
    dual;

SELECT
    current_date
FROM
    dual;

SELECT
    add_months(sysdate,3)
FROM
    dual;

SELECT
    add_months(sysdate,-3)
FROM
    dual;

SELECT
    last_day(sysdate)
FROM
    dual;

SELECT
    next_day(sysdate,'monday')
FROM
    dual;

SELECT
    from_tz(localtimestamp,'11:00')
FROM
    dual;

SELECT
    next_day(last_day(sysdate),'monday')
FROM
    dual;

SELECT
    next_day(last_day(to_date(5,'mm')),'monday')
FROM
    dual;

SELECT
    new_time(sysdate,'ADT','AST')
FROM
    dual;

SELECT
    to_date(1,'dd')
FROM
    dual;

SELECT
    to_date(1,'mm')
FROM
    dual;

SELECT
    to_date(1,'yy')
FROM
    dual;

SELECT
    to_date(13,'hh24')
FROM
    dual;

SELECT
    to_date(13,'mi')
FROM
    dual;

SELECT
    to_date(13,'ss')
FROM
    dual;

SELECT
    INTERVAL '123' YEAR
FROM
    dual; --error for precesion default is 2

SELECT
    INTERVAL '123' YEAR ( 3 )
FROM
    dual;

SELECT
    INTERVAL '12-3' YEAR TO MONTH
FROM
    dual;

SELECT
    INTERVAL '123' MONTH
FROM
    dual;

SELECT
    INTERVAL '12' DAY
FROM
    dual;

SELECT
    INTERVAL '12 12:34:33.44' DAY TO SECOND ( 2 )
FROM
    dual;

SELECT
    INTERVAL '124 12:34:33.44' DAY TO SECOND ( 2 )
FROM
    dual; --error

SELECT
    INTERVAL '123 12:34:33.44' DAY ( 3 ) TO SECOND ( 2 )
FROM
    dual;

SELECT
    INTERVAL '4555665' SECOND
FROM
    dual;

SELECT
    INTERVAL '345454' HOUR
FROM
    dual; --error

SELECT
    INTERVAL '12' YEAR TO MONTH
FROM
    dual;--error

SELECT
    sysdate-INTERVAL '12' DAY
FROM
    dual;

SELECT
    sysdate-INTERVAL '12' SECOND
FROM
    dual;

SELECT
    sysdate-INTERVAL '12 22:33:33.00' DAY TO SECOND
FROM
    dual;

SELECT
    sysdate-INTERVAL '234323' SECOND
FROM
    dual;