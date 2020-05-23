/*privileges*/
SELECT *
FROM all_tab_privs;

CREATE USER user1 IDENTIFIED BY user1;

CREATE USER user2 IDENTIFIED BY user2;

CREATE ROLE role1;

CREATE ROLE role2;

GRANT
    CREATE TABLE
TO user1;

GRANT
    CREATE ANY INDEX
TO role1;

GRANT
    CREATE SEQUENCE, role1 TO role2;

GRANT
    CREATE VIEW, role1 TO user1;

GRANT
    CREATE VIEW, role1 TO user1, user2, role2;

grant
    CREATE TABLE, insert on hr.employees to user1;  -- error

grant insert on hr.employees to user1;

grant insert on hr.employees to user1, user2, role1;

grant insert on hr.employees to user1 with grant option;

grant create table to user1, role2 with admin option;

grant insert(employee_id), update(salary), delete on hr.employees to user1 with grant option;

grant insert(employee_id), UPDATE(salary), DELETE ON hr.employees TO user1, role1 WITH GRANT
option; /*error role cannot have privileges with grant option*/

GRANT role2 TO role1;   /* error*/

CREATE ROLE allprivileges;

CREATE ROLE allprivewithpassword IDENTIFIED BY test1234;

SET ROLE allprivileges;   /* set role for current session;*/

SET ROLE NONE; /* Disables all roles for the current session (including all default roles).*/

SET ROLE allprivewithpassword IDENTIFIED BY test1234;

ALTER USER hr DEFAULT ROLE allprivileges;

ALTER USER hr DEFAULT ROLE ALL EXCEPT allprivewithpassword;  -- All roles are default except allprivewithpassword 










