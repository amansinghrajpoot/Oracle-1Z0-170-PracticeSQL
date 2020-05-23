CREATE SEQUENCE counters;

SELECT
    counters.NEXTVAL
FROM
    dual;

SELECT
    counters.NEXTVAL
FROM
    dual; -- incremented by 1

SELECT
    counters.CURRVAL
FROM
    dual;

DROP SEQUENCE counters;

CREATE SEQUENCE counters;

SELECT
    counters.CURRVAL
FROM
    dual; -- can not call currval before nextval

DROP SEQUENCE counters;

CREATE SEQUENCE counters START WITH 2   -- default 1

 INCREMENT BY 2  -- default 1

 MINVALUE 1 MAXVALUE 1 ORDER CACHE 2 --(default 20)

;   -- minvalue should be less than maxvalue

CREATE SEQUENCE counters START WITH 2   -- default 1

 INCREMENT BY 2  -- default 1

 MINVALUE 1 MAXVALUE 8 ORDER CACHE 2 --(default 20)

 NOCYCLE;

SELECT
    counters.NEXTVAL
FROM
    dual;   -- after 8 error

DROP SEQUENCE counters;

CREATE SEQUENCE counters START WITH 2   -- default 1

 INCREMENT BY 7  -- default 1

 MINVALUE 1 MAXVALUE 8 ORDER CACHE 2 --(default 20)

 NOCYCLE;

DROP SEQUENCE counters;

CREATE SEQUENCE counters START WITH 2   -- default 1

 INCREMENT BY 2  -- default 1

 MINVALUE 1 MAXVALUE 8 ORDER CACHE 2 --(default 20)

 CYCLE;

SELECT
    counters.NEXTVAL
FROM
    dual;

DROP SEQUENCE counters;

CREATE SEQUENCE counters START WITH 2   -- default 1

 INCREMENT BY 2  -- default 1

 MINVALUE 1 MAXVALUE 8 ORDER CACHE 5 --(default 20)  -- if cycle is specified then cache value must be equal to or less than number of values generated by sequence

 CYCLE;

DROP SEQUENCE counters;

CREATE SEQUENCE counters START WITH 2   -- default 1

 INCREMENT BY-2  -- default 1

 MINVALUE 1 MAXVALUE 8 ORDER CACHE 2 --(default 20)

 CYCLE;

SELECT
    counters.NEXTVAL
FROM
    dual;

DROP SEQUENCE counters;

CREATE SEQUENCE counters START WITH 2   -- default 1

 INCREMENT BY-2  -- default 1

 MINVALUE 1 MAXVALUE 8 ORDER CACHE 2 --(default 20)

 NOCYCLE;

SELECT
    counters.NEXTVAL
FROM
    dual;

DROP SEQUENCE counters;

CREATE SEQUENCE counters START WITH 8   -- default 1

 INCREMENT BY-2  -- default 1

 MINVALUE 1 MAXVALUE 8 ORDER CACHE 2 --(default 20)

 NOCYCLE;

SELECT
    counters.NEXTVAL
FROM
    dual;

DROP SEQUENCE counters;

CREATE SEQUENCE counters START WITH 8   -- default 1

 INCREMENT BY-3  -- default 1

 MINVALUE 1 MAXVALUE 8 ORDER CACHE 2 --(default 20)

 CYCLE;

SELECT
    counters.NEXTVAL
FROM
    dual;

DROP SEQUENCE counters;