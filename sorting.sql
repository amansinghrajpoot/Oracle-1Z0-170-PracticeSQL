-- sorting data
SELECT
    last_name,
    salary,
    hire_date
FROM
    employees;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    last_name;
                     -- default ascending

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    last_name ASC;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    last_name DESC;

SELECT
    last_name,
    salary,
    hire_date
FROM
    employees
ORDER BY
    salary;
                 -- ascending

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    salary,
    last_name;

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    salary,
    last_name DESC;
                    -- salary is ascending if salary is same last_name is sorted in descending order

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    hire_date;        
                   -- earliest to recent date ascending order

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    hire_date DESC;   
                  -- recent to earliest

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    1;    
                    -- column/expression position must be in between number of column/expression in the select list

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    1,
    salary;

SELECT
    salary,
    salary,
    hire_date
FROM
    employees
ORDER BY
    1,
    salary;

SELECT
    salary,
    salary,
    hire_date
FROM
    employees
ORDER BY
    1,
    2;

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    2,
    salary*12;

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    to_char(hire_date,'YY'),
    2,
    salary*12 DESC; 

-- functions can be used in order by clause

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    department_id,
    2,
    salary*12; 

--order by can select column which are not in select list

SELECT
    salary sal,
    last_name,
    hire_date
FROM
    employees
ORDER BY
    2,
    sal*12; 
-- alias can be ussd in order by clause

SELECT
    salary,
    last_name,
    hire_date
FROM
    employees
WHERE
    salary<3000
ORDER BY
    2,
    salary*12; 
-- order by clause always used at last in sql syntax