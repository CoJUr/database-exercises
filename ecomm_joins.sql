use ECOMM_STORE;

CREATE TABLE T1 ( c1 int );

select * from T1;

INSERT INTO T1 (c1) values (1),(2);

CREATE TABLE T2 ( c1 int );

INSERT INTO T2 (c1) values (1), (3);

SELECT * FROM T2;

# drop table t1;
# drop table T2;

SELECT T1.c1, T2.c1
FROM T1 LEFT JOIN T2
ON T1.C1 = T2.C1;

SELECT T1.c1, T2.c1
FROM T1 RIGHT JOIN T2
ON T1.C1 = T2.C1;

# UNIONS: combines and smooshes together different queries. union all doesn't remove dupe
select c1 FROM T1
union all
SELECT C1 FROM T2;


# "FULL JOIN"  combining both join types to show all values with/without their matches
select T1.C1, T2.C1
FROM T1
LEFT JOIN T2 ON T1.C1 = T2.c1
UNION
SELECT T1.C1, T2.C1
FROM T1
RIGHT JOIN T2 ON T1.C1 = T2.C1;