-- nesting multiple functions
SELECT
    instr('Stephen king','k')
FROM
    dual;

SELECT
    substr('Stephen king',instr('Stephen king','k'))
FROM
    dual;

SELECT
    initcap(substr('Stephen king',instr('Stephen king','k')))
FROM
    dual;

SELECT
    upper(initcap(substr('Stephen king',instr('Stephen king','k'))))
FROM
    dual;

SELECT
    upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper
    (upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(upper(initcap(substr
    ('Stephen king',instr('Stephen king','k')))))))))))))))))))))))))))))))))))))))))))
FROM
    dual;

SELECT
    COUNT(*)
FROM
    employees;

SELECT
    MAX(COUNT(*))
FROM
    employees; -- error

SELECT
    MAX(COUNT(*))
FROM
    employees
GROUP BY
    department_id;

SELECT
    MIN(MAX(COUNT(*)))
FROM
    employees
GROUP BY
    department_id;
                               -- can be nested to two levels

SELECT
    MIN(upper(last_name))
FROM
    employees;

SELECT
    MAX(upper(last_name))
FROM
    employees;

SELECT
    COUNT(MAX(upper(last_name)))
FROM
    employees
GROUP BY
    department_id;