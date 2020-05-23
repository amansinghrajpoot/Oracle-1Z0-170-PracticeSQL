--Using the TO_CHAR, TO_NUMBER, and TO_DATE conversion functions
SELECT
    to_char(department_id)
FROM
    employees;

SELECT
    to_char('char data')
FROM
    dual;

SELECT
    to_char(89)
FROM
    dual;

SELECT
    to_char(NULL)
FROM
    dual;

SELECT
    to_char(6789,'9999')
FROM
    dual;

SELECT
    to_char(6789,'999')
FROM
    dual;  -- #####

SELECT
    to_char(6789,'9999.99')
FROM
    dual;

SELECT
    to_char(6789.98,'9999.99')
FROM
    dual;

SELECT
    to_char(6789.98,'9999')
FROM
    dual; -- rounded off decimal part

SELECT
    to_char(6789.87,'9999.9')
FROM
    dual; -- rounded off

SELECT
    to_char(6789.98,'999.99')
FROM
    dual; --######

SELECT
    to_char(6789.98,'999999.99')
FROM
    dual;

SELECT
    to_char(6789.98,'99999G9.99')
FROM
    dual; --error

SELECT
    to_char(6789.98,'99999,9.99')
FROM
    dual;

SELECT
    to_char(6789.98,'9999,99.99')
FROM
    dual;

SELECT
    to_char(6789.98,'999,999.99')
FROM
    dual;

SELECT
    to_char(6789.98,'99,9999.99')
FROM
    dual;

SELECT
    to_char(6789.98,'9,99999.99')
FROM
    dual;

SELECT
    to_char(6789.98,'99,9.99')
FROM
    dual; --######

SELECT
    to_char(6789.98,'999G999D99')
FROM
    dual;

SELECT
    to_char(6789.98,'9999.99')
FROM
    dual;

SELECT
    to_char(6787,'999900')
FROM
    dual;

SELECT
    to_char(6789.98,'$9999.99')
FROM
    dual;  -- currency

SELECT
    to_char(6789.98654,'9999.99EEEE')
FROM
    dual;

SELECT
    to_char(6789.98654,'9999.EEEE')
FROM
    dual;

SELECT
    to_char(-6787,'9999PR')
FROM
    dual;

SELECT
    to_char(6787,'9999S')
FROM
    dual;

SELECT
    to_char(-6787,'9999S')
FROM
    dual;

SELECT
    to_char(+6787,'9999S')
FROM
    dual;

SELECT
    to_char(6787,'S9999')
FROM
    dual;

SELECT
    to_char(-6787,'S9999')
FROM
    dual;

SELECT
    to_char(6787,'9999V')
FROM
    dual;

SELECT
    to_char(6787,'9999V999')
FROM
    dual;

SELECT
    to_char(6787,'XXXX')
FROM
    dual;

SELECT
    to_char(678700,'999999B99')
FROM
    dual;

SELECT
    to_char(67,'RN')
FROM
    dual;

SELECT
    to_number(8)
FROM
    dual;

SELECT
    to_number('8')
FROM
    dual;

SELECT
    to_number('a')
FROM
    dual; -- error

SELECT
    to_number('8.9','9.9')
FROM
    dual;

SELECT
    to_number('$8.9','$9.9')
FROM
    dual;

SELECT
    to_number('6754','XXXX')
FROM
    dual;

SELECT
    to_number('879,67.76','999G99D99')
FROM
    dual;

SELECT
    to_number('887500','99999V9')
FROM
    dual; -- error

SELECT
    to_date(sysdate)
FROM
    dual;

SELECT
    to_date('31-DEC-2010')
FROM
    dual; -- default format in nls_date_format

SELECT
    TO_DATE('31122020','DDMMYYYY')
FROM
    dual;

SELECT
    TO_DATE('31122020','DD/MM/YYYY')
FROM
    dual;

SELECT
    TO_DATE('31-12-2020','DD/MM/YYYY')
FROM
    dual;

SELECT
    TO_DATE('21','DD')
FROM
    dual;

SELECT
    TO_DATE('04','MM')
FROM
    dual;

SELECT
    TO_DATE('21','YY')
FROM
    dual;

SELECT
    TO_DATE('0421','MMYY')
FROM
    dual;