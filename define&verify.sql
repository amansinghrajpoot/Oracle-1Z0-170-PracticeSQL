-- define and verify command
DEF var;

DEFINE var;

UNDEFINE var;

UNDEF var;

DEFINE var=30;

DEF var;

DEF var='King';

define;

SET VER ON;

SET VERIFY ON;

Enter value for col: salary
old   1: select &col from employees
new   1: SELECT
                                                                           salary
                                                                       FROM
                                                                           employees
             
    -- not supported in sql developer
SELECT
    &col
FROM
    employees;