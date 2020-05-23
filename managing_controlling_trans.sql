-- managing and controlling database transactions
SELECT
    CURRENT_SCN
FROM
    v$database;  --privileged user

COMMIT;

CREATE TABLE trans (
    val NUMBER(3)
);

SAVEPOINT a;

INSERT INTO trans VALUES ( 1 );

SELECT
    val
FROM
    trans;

SAVEPOINT b;

INSERT INTO trans VALUES ( 2 );

SELECT
    val
FROM
    trans;

SAVEPOINT c;

INSERT INTO trans VALUES ( 3 );

SELECT
    val
FROM
    trans;

SAVEPOINT d;

SELECT
    val
FROM
    trans;

ROLLBACK TO d;

SELECT
    val
FROM
    trans;

ROLLBACK TO c;

SELECT
    val
FROM
    trans;

SAVEPOINT b; --overwrite the savepoint b with new scn

SELECT
    val
FROM
    trans;

ROLLBACK TO b;

SELECT
    val
FROM
    trans;

COMMIT;   -- erases all the savepoints

ROLLBACK TO a;  -- error

DROP TABLE trans PURGE;