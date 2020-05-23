-- applying rules of precedence for operators in an expresion
SELECT
    'true'
FROM
    dual
WHERE
    1=1;

SELECT
    'true'
FROM
    dual
WHERE
    1<>1;

SELECT
    'true'
FROM
    dual
WHERE
    1 !=1;

SELECT
    'true'
FROM
    dual
WHERE
    1 !=2;

SELECT
    'true'
FROM
    dual
WHERE
    1 !=1
    OR 1=1;
                                                           -- And has higher precedence than or

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    last_name='King'
    AND salary=24000
    OR salary=2400;
                                                            -- Brackets have the highest precedence

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    last_name='King'
    AND ( salary=24000
          OR salary=2400 );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    ( last_name='King'
      AND salary=24000
      OR salary=2400 )
    AND ( last_name='Bloom'
          OR salary=10000 );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    last_name='King'
    AND ( salary=24000
          OR salary=2400 )
    AND ( last_name='Bloom'
          OR salary=10000 );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    last_name='King'
    AND ( salary=24000
          OR salary=2400 )
    OR ( last_name='Bloom'
         OR salary=10000 );

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    ( salary=24000
      OR salary=2000+400 )
    OR ( last_name='Bloom'
         OR salary=10000 )
    AND last_name IN (
        'King'
    );
                                                                                    -- Arithmatic operators
                                                                                    -- in
                                                                                    -- between 
                                                                                    -- and
                                                                                    -- or

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    ( salary=24000
      OR salary=2000+400 )
    OR ( last_name='Bloom'
         OR salary=10000 )
    AND last_name IN (
        'King'
    );